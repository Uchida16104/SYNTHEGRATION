MIDIClient.init;
m = MIDIOut(1);
m.latency = 0.1;
(
Routine({
    loop {
        var note = rrand(48, 72);
        m.noteOn(0, note, 100);
        (1.0 + 0.5.rand).wait;
        m.noteOff(0, note);
    }
}).play;
)
