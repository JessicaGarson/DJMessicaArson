# sandwich woes 
live_loop :quantified_code do
  use_synth_defaults
  synth :tri
  sleep 0.15
end

live_loop :chris_hi do
  use_random_seed 10
  synth :pluck
  sleep 0.43
end

live_loop :maybe_soon_ill_play_vr do
  use_merged_synth_defaults
  synth :mod_pulse, amp: 3
  sleep 8
end

live_loop :bye do
  use_bpm 20
  synth :beep
  sleep 150
end

live_loop :work_is_cool_on_saturdays do
  synth :supersaw
  sleep 2
end

live_loop :how_do_we_find_synths do
  use_synth_defaults
  synth :prophet
  sleep 3
end

live_loop :glens_gardern_grinder_is_not_a_sandwich do
  use_synth_defaults
  synth :tb303
  sleep 50
end

live_loop :like_really_it_should_not_be do
  use_synth_defaults
  synth :blade
  sleep 6
end

live_loop :it_would_be_better_with_just_bread do
  use_synth_defaults
  synth :dark_ambience
  sleep 0.8
end

live_loop :hot_mess_of_a_sandwich do
  use_random_seed 93
  synth :growl
  sleep 0.2
end

live_loop :my_sandwich_was_13_dollars do
  use_random_seed 16
  synth :dull_bell
  sleep 14
end

live_loop :ive_been_eating_at_glens_too_much do
  use_random_seed 9034
  synth :saw
  sleep 5
end

live_loop :my_sandwich_was_really_not_that_bad do
  sample :bd_ada
  sleep 0.3
end

live_loop :sold do
  use_synth_defaults
  synth :supersaw
  sleep 8
end



