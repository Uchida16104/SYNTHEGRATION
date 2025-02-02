use_osc "127.0.0.1", 4559
border = 1
random=rrand(0,1)
limit = 10000*random
availability = 20000*random
use_random_seed rrand_i(border, limit)
use_random_source [:dark_pink, :light_pink, :perlin, :pink, :white].choose
define :send_osc_data do |path, time, name, pitch, volume|
  osc path, time, name, pitch, volume
end
define :interpolate do |start_value, end_value, steps|
  (0..steps).map { |i| start_value + (end_value - start_value) * (i.to_f / steps) }
end
synth_list=[]
for k in 0..synth_names.length-1 do
  synth_list.push(synth_names[k])
end
sample_list=[]
for i in 0..sample_groups.length-1 do
  for j in 0..sample_names(sample_groups[i]).length-1 do
    sample_list.push(sample_names(sample_groups[i])[j])
  end
end
live_loop :random_synths do
  available_fx1 = fx_names - [:record]
  fx1 = available_fx1[rrand_i(0, available_fx1.length - 1)]
  synth = synth_names[rrand_i(0, synth_names.length - 1)]
  time1 = rrand(0, 0.125)
  duration = rrand(2, 4)
  steps = 20  
  start_pitch = rrand(48, 72)
  end_pitch = rrand(48, 72)
  start_volume = rrand(0.5, 1).round(2)
  end_volume = rrand(0.5, 1).round(2)
  pitches = interpolate(start_pitch, end_pitch, steps)
  volumes = interpolate(start_volume, end_volume, steps)
  with_fx fx1 do
    use_synth synth
    s = play start_pitch, amp: start_volume, sustain: duration, release: 1
    steps.times do |i|
      control s, note: pitches[i], amp: volumes[i]
      send_osc_data("/synth1", time1, synth, pitches[i], volumes[i])
      sleep duration.to_f / steps
    end
  end
end
live_loop :random_samples do
  available_fx2 = fx_names - [:record]
  fx2 = available_fx2[rrand_i(0, available_fx2.length - 1)]
  sample_group = sample_groups[rrand_i(0, sample_groups.length - 1)]
  sample_name = sample_names(sample_group)[rrand_i(0, sample_names(sample_group).length - 1)]
  time2 = rrand(0, 0.125)
  duration = sample_duration(sample_name)
  steps = 20
  start_pitch = rrand(-12, 12)
  end_pitch = rrand(-12, 12)
  start_volume = rrand(0.5, 1).round(2)
  end_volume = rrand(0.5, 1).round(2)
  pitches = interpolate(start_pitch, end_pitch, steps)
  volumes = interpolate(start_volume, end_volume, steps)
  with_fx fx2 do
    t = sample sample_name, amp: start_volume, pitch: start_pitch, sustain: duration
    steps.times do |i|
      control t, pitch: pitches[i], amp: volumes[i]
      send_osc_data("/sample1", time2, sample_name, pitches[i], volumes[i])
      sleep duration.to_f / steps
    end
  end
end