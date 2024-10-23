execute positioned ^ ^ ^3.5 run function dumb:reverb/flurryhitbox
scoreboard players remove @s reverbflurry 1

execute if score @s reverbflurry matches 1.. run schedule function dumb:reverb/flurryschedule 1t
execute if score @s reverbflurry matches 0 run function dumb:reverb/endflurry