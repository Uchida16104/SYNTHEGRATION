
import math

theta = 0
step = 1
slider_a = 1
slider_b = 1

theta = theta + math.sqrt(step) / 1000000000
left_scale = 0.3 * slider_a
right_scale = 0.3 * slider_b

left_channel = left_scale * math.tan(theta * step)
right_channel = right_scale * math.tan(theta * step + math.pi / 2)

print(left_channel, right_channel)
