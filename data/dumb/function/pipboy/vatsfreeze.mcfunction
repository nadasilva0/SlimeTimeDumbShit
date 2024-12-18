attribute @s minecraft:movement_speed modifier add vatsfreezespeed -0.9 add_multiplied_total
attribute @s minecraft:jump_strength modifier add vatsfreezejump -1 add_multiplied_total
attribute @s minecraft:attack_speed modifier add vatsfreezeatk -0.9 add_multiplied_total
scoreboard players set @s vatsactive 1
effect give @s minecraft:glowing 5 0 true
tag @s add vatsfrozen