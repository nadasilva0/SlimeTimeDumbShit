scoreboard players set @s gundelay 30
scoreboard players set @s bigironammo 7
effect give @s slowness 1 2 true
playsound minecraft:custom.bigironreload player @a ~ ~ ~ 1 1
particle minecraft:falling_honey ^-0.4 ^1 ^0.3 0.1 0.1 0.1 1 6
title @s actionbar ["",{"text":"[ Reloading... ]","color":"gold"}]