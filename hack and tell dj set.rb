live_loop :add_in do
  
  if one_in(3)
    sample :drum_heavy_kick
  else
    sample :drum_cymbal_closed
  end
  
  sleep 0.5
  
end

##| live_loop :start do

##|   if one_in(5)
##|     sample :drum_heavy_kick
##|     sleep 0.5
##|   else
##|     sample :drum_cymbal_closed
##|     sleep 0.25
##|   end

##| end

##| use_debug false
##| use_synth :tb303
##| live_loop :squelch do
##|   n = (ring :e1, :e2, :e3).tick
##|   play n, release: 1, cutoff: 80,
##|     res: 0.8, wave: 0
##|   sleep 0.125
##| end

##| live_loop :bd do
##|   sample :bd_haus, cutoff: 70, amp: 4
##|   sleep 0.5
##| end

##| live_loop :stacked do
##|   use_random_seed 500
##|   sample :ambi_choir, rate: 0.6, attack: 6, decay: 9
##|   sleep 1
##| end
