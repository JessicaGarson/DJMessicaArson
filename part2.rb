use_debug false
live_loop :random_riff do
  synth :blade, note: :e4, release: 4, cutoff: 100, amp: 1.5
  use_synth :tri
  use_random_seed 30030
  notes = (scale :e3, :minor_pentatonic, num_octaves: 2).shuffle.take(8)
  8.times do
    play notes.tick, release: rand(7),
      cutoff: rrand(45, 130) if one_in(2)
    sleep 0.33
  end
end

##| live_loop :drums do
##|   use_random_seed 500
##|   16.times do
##|     sample :bd_haus, rate: 2, cutoff: 110 if rand < 0.35
##|     sleep 0.125
##|   end
##| end

##| live_loop :bd do
##|   sample :bd_haus, cutoff: 100, amp: 3
##|   sleep 0.5
##| end

