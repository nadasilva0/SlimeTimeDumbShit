#effect give @a[distance=..2,tag=!reborn] minecraft:blindness 2 0 true
effect give @a[distance=..2,tag=!reborn] minecraft:nausea 8 0 true
effect give @a[distance=..2,tag=!reborn] minecraft:levitation 1 1 true

execute as @s at @s if entity @e[type=!#slimelib:nottargetable,distance=0..2,tag=!reborn] run function dumb:rebirth/endbolt

particle dust{color:[0.972,0.137,0.188],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 5 4 force
particle dust{color:[0.988,0.329,0.168],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 5 4 force
particle dust{color:[1.000,0.568,0.360],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 5 4 force
particle dust{color:[1.000,0.749,0.458],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 5 4 force

tp @s ~ ~-1 ~ facing entity @n[distance=..3,tag=!reborn,type=!#slimelib:nottargetable]
tp @s ^ ^ ^1

scoreboard players remove @s[scores={projdist=1..}] projdist 1
execute if score @s projdist matches 1.. run schedule function dumb:rebirth/boltschedule 1t
execute if score @s projdist matches 0 run function dumb:rebirth/end