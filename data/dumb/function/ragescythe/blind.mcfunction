scoreboard players remove @s melRage 40
scoreboard players set @s gundelay 20
function dumb:ragescythe/display_rage
effect give @s minecraft:speed 3 2 true
execute as @e[distance=1..5] run effect give @s minecraft:blindness 6 0 false
particle dust{color:[0.816,0.078,0.333],scale:4} ~ ~ ~ 2 2 2 0.01 300 force
particle dust{color:[0.988,0.533,0.710],scale:4} ~ ~ ~ 2 2 2 0.01 300 force
playsound minecraft:entity.squid.squirt master @a ~ ~ ~ 1 1