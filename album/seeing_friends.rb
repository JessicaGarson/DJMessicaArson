# seeing friends
use_debug false
live_loop :random_riff do
  synth :blade, note: :g4, release: 6, cutoff: 10, amp: 1.5
  use_synth :tri
  use_random_seed 30030
  notes = (scale :e3, :minor_pentatonic, num_octaves: 3).shuffle.take(8)
  8.times do
    play notes.tick, release: rand(0.5),
      cutoff: rrand(60, 130) if one_in(6)
    sleep 0.125
  end
end

live_loop :hi_ben_klemons do
  use_synth_defaults
  synth :pluck
  sleep 16
end

live_loop :hello_friends do
  sample :ambi_drone, amp: 2
  sleep 3
end

live_loop :your_green_jacket_is_cool do
  use_synth_defaults
  synth :saw
  sleep 2
end

live_loop :joe_hello do
  synth :piano, attack: 30
  sleep 5
end

live_loop :okay do
  use_arg_bpm_scaling 3
  synth :mod_beep
  sleep 3
end

live_loop :nice do
  use_timing_guarantees 5
  synth :sound_in_stereo, decay: 3
  sleep 5
end
