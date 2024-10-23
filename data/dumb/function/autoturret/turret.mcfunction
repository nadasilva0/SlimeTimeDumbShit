scoreboard players set @s[tag=!processed] turretdelay 15
scoreboard players set @s[tag=!processed] turretbarrel 0
tag @s add processed

tp @s ~ ~ ~ facing entity @e[distance=..8,sort=nearest,type=!#slimelib:nottargetable,team=!Ikoss,limit=1]
execute if entity @e[distance=..8,sort=nearest,type=!#slimelib:nottargetable,team=!Ikoss,limit=1] run function dumb:autoturret/turretshooting
execute unless entity @e[distance=..8,sort=nearest,type=!#slimelib:nottargetable,team=!Ikoss,limit=1] run function dumb:autoturret/turretnotshooting
setblock ~ ~ ~ minecraft:iron_block
setblock ~ ~1 ~ minecraft:iron_bars