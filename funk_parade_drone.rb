live_loop :hi_cash do
  use_synth_defaults
  sample :drum_cowbell
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

live_loop :this_is_sounding_cool do
  sample :bd_klub, attack: 30
  sleep 20
end

live_loop :chris_given do
  synth :pretty_bell, decay: 20
  sleep 15
end

live_loop :writing_code do
  sample :ambi_choir, attack: 15
  sleep 2
end
