execute at @e[type=armor_stand,tag=shaderoot] run particle minecraft:smoke ~ ~ ~ 0.2 0.5 0.2 0 10 normal
kill @e[type=armor_stand,tag=shaderoot]
kill @e[type=interaction,tag=rootslamcreature]
tag @a remove rootslamcaster