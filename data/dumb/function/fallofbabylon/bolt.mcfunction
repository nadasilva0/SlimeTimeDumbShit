particle minecraft:dust_color_transition{from_color:[1.000,1.000,1.000],scale:1.5,to_color:[1.000,0.000,0.000]} ~ ~ ~ 0.1 0.1 0.1 5 14 force

execute as @s at @s if entity @e[type=!#slimelib:nottargetable,distance=0..2,tag=!catalyst] run function dumb:fallofbabylon/boltend
effect give @e[distance=..2,tag=!catalyst,type=!creeper] minecraft:wither 30 0 true

tp @s ~ ~-1 ~ facing entity @n[distance=..8,tag=!catalyst,type=!#slimelib:nottargetable]
tp @s ^ ^ ^1

scoreboard players remove @s[scores={projdist=1..}] projdist 1
execute if score @s projdist matches 1.. run schedule function dumb:fallofbabylon/boltschedule 1t
execute if score @s projdist matches 0 run function dumb:fallofbabylon/boltend