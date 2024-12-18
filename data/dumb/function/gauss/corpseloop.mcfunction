scoreboard players remove @s projdist 1
#say corpse
particle minecraft:smoke ~-0.17 ~0.3 ~ 0 0 0 0 1 force
particle minecraft:smoke ~0.17 ~0.3 ~ 0 0 0 0 1 force

execute unless score @s projdist matches 0 run schedule function dumb:gauss/corpseloopschedule 1t
execute if score @s projdist matches 0 run kill @s