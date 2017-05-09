# end of a long day
live_loop :kelli_made_this do
  use_sample_defaults
  sample :elec_chime
  sleep 0.5
end

live_loop :drum do
  use_sample_defaults
  sample :bass_thick_c
  sleep 0.8
end

live_loop :sup do
  use_merged_sample_defaults
  sample :ambi_swoosh
  sleep 0.3
end

live_loop :how do
  synth :mod_fm, cutoff: 5, decay: 0.3
  sleep 3
end

live_loop :who do
  synth :saw, pan: 0, env_curve: 2
  sleep 0.02
end

live_loop :water_bottle do
  synth :square
  sleep 7
end


