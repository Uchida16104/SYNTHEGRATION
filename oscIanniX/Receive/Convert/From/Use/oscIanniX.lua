--
-- .lua files can be used to make your own custom audio sources!
-- Lua documentation: https://www.lua.org/docs.html
--
-- All variables are saved between calls to this script.
--
-- Below is a simple example of an audio effect that makes a
-- nice visual on an oscilloscope and shows off some of the
-- functionality available.
--
-- The variable 'step' used below is incremented with every
-- call to this script, starting at 1.
--

-- sets 'theta' to 0 initially, or the previous value of
-- 'theta' the last time this script ran


-- Octave : 0
-- Mic Volume : 0


-- .lua file settings

-- Slider a : Static
-- Slider b : Seesaw
-- Slider c : Linear
-- Slider d : Forward
-- Slider e : Reverse


-- Audio Effects

-- Vector cancelling : None, Static
-- Bit Crush : 0.1, Seesaw
-- Wobble : 0.01, Linear
-- Smoothing : 0.125, Forward
-- Vertical shift : None, Reverse
-- Horizontal shift : None, Static


-- Transition

-- x : 0.0
-- y : 0.0
-- Ellipse : None
-- Transition scale : 1, Static
-- Transition speed : 1, Seesaw
-- Master volume : 3, Linear
-- MIDI volume : 0.25, Forward


-- Rotation

-- 2D Rotate speed : 0.01, Static
-- 3D Perspective : 0, Seesaw
-- 3D Distance(z) : 0, Linear
-- 3D Rotate Speed : 0.01, Forward
-- Rotate x : 1, Reverse
-- Rotate y : 1, Static
-- Rotate z : 1, Seesaw


-- Other

-- Trace max : 0, Static
-- Trace min : 0, Seesaw


-- Target frequency : 261.63(Hz)


theta = theta or 0

-- updates 'theta' using 'step'
theta = theta + math.sqrt(step) / 1000000000

-- 'slider_a', 'slider_b', ..., 'slider_e' are controlled by
-- the respective sliders in the .lua file settings
left_scale = 0.3 * slider_a
right_scale = 0.3 * slider_b

-- Returns audio samples that will be played back
return {
    -- left audio channel
    left_scale * math.tan(theta * step),
    -- right audio channel
    right_scale * math.tan(theta * step + math.pi / 2)
}
