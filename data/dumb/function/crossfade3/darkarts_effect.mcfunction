particle sculk_charge{roll:0} ~ ~0.1 ~ 0.2 0 0.2 0 5 force
fill ~ ~0 ~ ~ ~-1 ~ sculk replace #minecraft:sculk_replaceable

tag @e[distance=..1.5,type=!#slimelib_nottargetable,tag=!darkarts] add darkarts_target
effect give @e[distance=..1.5,type=!#slimelib_nottargetable,tag=!darkarts] glowing 1 1 true
effect give @e[distance=..1.5,type=!#slimelib_nottargetable,tag=!darkarts] slowness 1 5 true

scoreboard players remove @s[scores={projdist=1..}] projdist 1
execute if score @s projdist matches 1.. run schedule function dumb:crossfade3/darkarts_effect_schedule 1t
execute if score @s projdist matches 0 run function dumb:crossfade3/dashdisable