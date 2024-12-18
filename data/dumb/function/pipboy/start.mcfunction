execute unless score @s hold_cooldown matches 1.. run function dumb:pipboy/cycle
execute if score @s charmcooldown matches 1.. run title @s actionbar ["",{"text":"Recharging! [[","color":"red"},{"score":{"name":"@s","objective":"charmcooldown"},"color":"red"},{"text":"]]","color":"red"}]

advancement revoke @s only dumb:use_item_cooldown
scoreboard players set @s hold_cooldown 2