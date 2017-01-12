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

