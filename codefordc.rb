use_debug false
live_loop :answer do
  synth :pluck
  n = (ring :c2, :g1, :c3).tick
  play n, attack: 109, env_curve: 7
  sleep 2
end
live_loop :bd do
  sample :vinyl_backspin, cutoff: 20, amp: 3
  sleep 0.5
end

live_loop :drums do
  use_random_seed 500
  16.times do
    sample :guit_em9, rate: 20, cutoff: 130 if rand < 0.30
    sleep 0.125
  end
end
with_fx :reverb, mix: 0.8 do
  loop do
    s = synth [:bnoise, :cnoise, :gnoise].choose, amp: rrand(0.5, 1.5), attack: rrand(0, 4), sustain: rrand(0, 2), release: rrand(1, 3), cutoff_slide: rrand(0, 3), cutoff: rrand(60, 80), pan: rrand(-1, 1), pan_slide: 1, amp: rrand(0.5, 1)
    control s, pan: rrand(-1, 1), cutoff: rrand(60, 115)
    sleep rrand(2, 3)
  end
end
live_loop :bd do
  sample :bd_haus, cutoff: 90, amp: 3
  sleep 0.5
end
live_loop :drums do
  use_random_seed 500
  16.times do
    sample :guit_em9, rate: 130, cutoff: 130 if rand < 0.30
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
live_loop :drums do
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

live_loop :add do
  sample :bd_haus
  sleep 2
end
live_loop :drums do
  use_random_seed 500
  16.times do
    sample :guit_em9, rate: 130, cutoff: 130 if rand < 0.30
    sleep 0.125
  end
end
with_fx :reverb, mix: 0.5 do
  loop do
    s = synth [:bnoise, :cnoise, :gnoise].choose, amp: rrand(0.5, 1.5), attack: rrand(0, 4), sustain: rrand(0, 2), release: rrand(1, 3), cutoff_slide: rrand(0, 3), cutoff: rrand(60, 80), pan: rrand(-1, 1), pan_slide: 1, amp: rrand(0.5, 1)
    control s, pan: rrand(-1, 1), cutoff: rrand(60, 115)
    sleep rrand(2, 3)
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
live_loop :drums do
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

live_loop :add do
  sample :bd_haus
  sleep 2
end


