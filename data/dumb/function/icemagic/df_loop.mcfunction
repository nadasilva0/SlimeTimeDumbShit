##execute rotated as @e[tag=burntarget] run teleport @s ^ ^ ^0.05
execute positioned ~ ~1 ~ run function dumb:icemagic/deep_freeze_particle
function dumb:icemagic/collide_block
damage @e[distance=..2,tag=!freezing,team=!smarmallies,limit=1,sort=nearest] 3 minecraft:freeze
scoreboard players add @e[distance=..2,tag=!freezing,team=!smarmallies] freezeScore 20

scoreboard players remove @s loopCount 1
execute if score @s loopCount matches 1.. run schedule function dumb:icemagic/df_loop_schedule 1t
execute if score @s loopCount matches 0 run kill @e[tag=burntarget]
execute if score @s loopCount matches 0 run effect give @s[tag=freezing] slowness 1 2 true
execute if score @s loopCount matches 0 run tag @a remove freezing

