# Code Review Blues

live_loop :drums do
  use_random_seed 500
  16.times do
    sample :guit_em9, rate: 10, cutoff: 130 if rand < 0.30
    sleep 0.125
  end
end

live_loop :bd do
  sample :bd_haus, cutoff: 70, amp: 3
  sleep 0.5
end


live_loop :drums do
  use_random_seed 500
  16.times do
    sample :ambi_glass_rub, rate: 130, cutoff: 130 if rand < 0.30
    sleep 0.125
  end
end

use_debug false
live_loop :random_riff do
  synth :blade, note: :g4, release: 6, cutoff: 10, amp: 1.5
  use_synth :tri
  use_random_seed 30030
  notes = (scale :e3, :minor_pentatonic, num_octaves: 2).shuffle.take(8)
  8.times do
    play notes.tick, release: rand(0.5),
      cutoff: rrand(60, 130) if one_in(2)
    sleep 0.125
  end
end


live_loop :create do
  synth :dark_ambience
  n = (ring :g1, :g2, :g3).tick
  play n, attack: 6, env_curve: 7
  sleep 4
end

live_loop :add do
  sample :bd_haus
  sleep 3
end

use_debug false
live_loop :random_riff do
  synth :blade, note: :g4, release: 6, cutoff: 10, amp: 1.5
  use_synth :tri
  use_random_seed 30030
  notes = (scale :e3, :minor_pentatonic, num_octaves: 2).shuffle.take(8)
  8.times do
    play notes.tick, release: rand(0.5),
      cutoff: rrand(60, 130) if one_in(2)
    sleep 0.125
  end
end

live_loop :okay do
  use_random_seed 500
  16.times do
    sample :bd_haus, rate: 2, cutoff: 110 if rand < 0.35
    sleep 0.125
  end
end

live_loop :bd do
  sample :bd_haus, cutoff: 100, amp: 3
  sleep 0.5
end

live_loop :create do
  synth :dark_ambience
  n = (ring :g1, :g2, :g3).tick
  play n, attack: 6, env_curve: 7
  sleep 4
end

live_loop :hey_paul_dunbar do
  use_synth_defaults
  synth :beep
  sleep 3
end

live_loop :this_sounds_pretty_cool do
  use_sample_defaults
  sample :bass_thick_c
  sleep 5
end

live_loop :add do
  sample :bd_haus
  sleep 2
end

live_loop :black_flag_is_cool do
  use_sample_defaults
  sample :ambi_piano
  sleep 5
end

live_loop :ht do
  use_transpose 8
  sample :bass_voxy_c
  sleep 8
end

live_loop :bullet do
  use_synth_defaults
  synth :gnoise
  sleep 3
end

