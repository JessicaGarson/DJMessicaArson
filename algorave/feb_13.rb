sample "/Users/jessicagarson/Documents/thanks.wav"

live_loop :hello do
  synth :tri
  sleep 0.23
end

live_loop :vday_is_soon do
  synth :pretty_bell, attack: 3, decay: 6
  sleep 4
end

live_loop :teddy_bears do
  use_transpose 9
  sample :bass_voxy_c
  sleep 2
end

live_loop :sugar_candy_daddy do
  use_synth :sine
  n = (ring, :f1, :f2, :f3)
  play n
  sleep 0.45
end

live_loop :maybe_candy_hearts do
  sample :ambi_glass_rub, beat_stretch: 5
  sleep 2
end

live_loop :getting_nervous do
  sample :ambi_drone, attack: 0.03
  sleep 8
end

live_loop :bd do
  synth :blade
  if one_in(3)
    sample :drum_bass_soft
    sleep 0.3
  else
    sample :drum_cymbal_pedal
    sleep 0.63
  end
end

live_loop :heart_candy do
  use_random_seed 503
  13.times do
    sample :sn_zome
    sleep 0.35
  end
end

live_loop :more_stuff do
  synth :supersaw, decay: 0.06
  sleep 0.35
end
