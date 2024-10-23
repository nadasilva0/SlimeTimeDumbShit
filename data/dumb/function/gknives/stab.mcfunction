tp @s ~ ~ ~ ~ 80
particle minecraft:falling_obsidian_tear ~ ~1 ~ 0.1 0.1 0.1 2 10 force
playsound minecraft:custom.stabself master @s ~ ~ ~ 10
execute unless block ~ ~-1 ~ minecraft:air run setblock ~ ~-1 ~ minecraft:purple_concrete
execute rotated ~ ~150 positioned ~ ~-0.5 ~ run function dumb:gknives/damageraycast