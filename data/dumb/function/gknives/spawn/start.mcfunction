###playsound minecraft:custom.screechcharge hostile @a

summon area_effect_cloud ~ ~1 ~ {Duration:1980,Tags:["laserspawner1"]}
summon area_effect_cloud ~ ~1 ~ {Duration:1980,Tags:["laserspawner2"]}
summon area_effect_cloud ~ ~1 ~ {Duration:1980,Tags:["laserspawner3"]}
summon area_effect_cloud ~ ~1 ~ {Duration:1980,Tags:["laserspawner4"]}
summon area_effect_cloud ~ ~1 ~ {Duration:1980,Tags:["laserspawner5"]}

execute as @e[type=minecraft:area_effect_cloud,tag=laserspawner1] at @s rotated as VitisViniferaaa run tp @s ~ ~ ~ ~-20 0
execute as @e[type=minecraft:area_effect_cloud,tag=laserspawner2] at @s rotated as VitisViniferaaa run tp @s ~ ~ ~ ~-10 0
execute as @e[type=minecraft:area_effect_cloud,tag=laserspawner3] at @s rotated as VitisViniferaaa run tp @s ~ ~ ~ ~0 0
execute as @e[type=minecraft:area_effect_cloud,tag=laserspawner4] at @s rotated as VitisViniferaaa run tp @s ~ ~ ~ ~10 0
execute as @e[type=minecraft:area_effect_cloud,tag=laserspawner5] at @s rotated as VitisViniferaaa run tp @s ~ ~ ~ ~20 0

function dumb:gknives/shoot/warn1