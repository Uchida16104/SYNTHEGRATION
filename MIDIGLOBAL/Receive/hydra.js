await loadScript(
	'https://cdn.jsdelivr.net/npm/hydra-midi@latest/dist/index.js'
)

await midi.start({
	channel: '*',
	input: '*'
})

function update() {
	let fps = Math.floor(Math.random() * 50) + 10;
	let speed = Math.random() * 2 - 1;
	setTimeout(update, Math.random() * 4000 + 1000);
}

function glitch(synth, amount) {
	return synth.modulatePixelate(
		osc()
		.thresh()
		.colorama(1)
		.shift(() => Math.cos(time), () => Math.sin(time)),
		amount,
		amount
	);
}

function slice(synth, init, limit, func) {
	let basePattern = synth;
	for (let i = init; i < limit; i++) {
		basePattern = basePattern.modulateScrollX(
			shape(2, i / limit)
			.scrollY(1 / i)
			.thresh(),
			() => func(time / i)
		);
	}
	return basePattern;
}

update();

src(o0)
	.shift(() => Math.cos(time), () => Math.sin(time))
	.hue(() => Math.sin(time * 0.5) + Math.cos(time * 0.5))
	.posterize(
		[Math.E, Math.PI]
		.reverse()
		.smooth(1 / 11)
		.ease(() => Math.tan(time / 7))
		.fit(1 / 5)
		.offset(1 / 3)
		.fast(1 / 2),
		[Math.E, Math.PI]
		.reverse()
		.smooth(1 / 11)
		.ease(() => Math.tan(time / 7))
		.fit(1 / 5)
		.offset(1 / 3)
		.fast(1 / 2)
	)
	.modulatePixelate(
		osc(note('*'))
		.scale(1.01),
		() => Math.random() * 0.1
	)
	.layer(
		slice(noise(note('*'))
			.thresh()
			.pixelate(note('*'), note('*')), 1, 3, Math.sin)
		.sub(
			shape(4, 0, 1)
			.colorama(
				[0, Math.E, Math.PI]
				.reverse()
				.ease("easeInOutCubic")
				.smooth(1 / 5)
				.fit(1 / 7)
				.offset(1 / 11)
				.fast(1 / 13)
			)
			.luma()
		)
		.mask(
			glitch(
				voronoi(note('*'))
				.luma()
				.modulateHue(gradient(1), () => Math.random() * 2)
				.pixelate(),
				20
			)
		)
	)
	.blend(o0, () => Math.random() * 0.8 + 0.1)
	.out();