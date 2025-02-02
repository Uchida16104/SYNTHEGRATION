live_loop :midi do
  note, velocity = sync "/midi:iacdriver_bus1:1/note_on"
  with_fx :ping_pong, phase: note/60.to_f, feedback: note/84.to_f, phase_slide: 0.1, feedback_slide: 0.1 do |pp|
    with_fx :vowel, voice: note.modulo(5), vowel_sound: note.modulo(5)+1, voice_slide: 0.1, vowel_sound_slide: 0.1 do |vw|
      with_fx :pitch_shift, pitch: note-60, pitch_slide: 0.1 do |ps|
        with_fx :ring_mod, freq: [note-6, note+6].choose, freq_slide: 0.1 do |rm|
          synth :organ_tonewheel, note: note, amp: velocity/127.to_f*Math::PI
          control rm, freq: [note-6, note+6].choose
          control ps, pitch: note-60
          control vw, voice: note.modulo(5), vowel_sound: note.modulo(5)+1
          control pp, phase: note/60.to_f, feedback: note/84.to_f
        end
      end
    end
  end
end