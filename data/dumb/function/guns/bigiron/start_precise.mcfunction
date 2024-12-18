execute unless score @s hold_cooldown matches 1.. run function dumb:guns/bigiron/start_raycast_precise
advancement revoke @s only dumb:use_item_cooldown
scoreboard players set @s hold_cooldown 9