tag @s add flurry
tag @s remove shriekparticle

scoreboard players set @s reverbdashcooldown 100
effect give @s minecraft:speed 1 30 true
particle minecraft:sculk_soul ~ ~ ~ 0.2 0.8 0.2 0 50 force
playsound minecraft:block.sculk_sensor.clicking master @a ~ ~ ~ 2
scoreboard players set @s reverbflurry 20
function dumb:reverb/flurryschedule

schedule function dumb:reverb/giveslowness 9t