##say hi :3
tag @s add has_ragescythe

execute if score @s melRage matches 1..299 run function dumb:ragescythe/berserk_start
execute if score @s melRage matches 300.. run function dumb:ragescythe/limit_break_transform

#scoreboard players set @s melRage 0