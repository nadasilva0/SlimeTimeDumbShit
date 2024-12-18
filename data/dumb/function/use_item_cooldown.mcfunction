execute if score @s hold_cooldown matches 1 if score @s gausscharge matches 1.. run function dumb:gauss/start
scoreboard players remove @s hold_cooldown 1
execute if score @s hold_cooldown matches 1.. run return run advancement revoke @s only dumb:use_item_cooldown