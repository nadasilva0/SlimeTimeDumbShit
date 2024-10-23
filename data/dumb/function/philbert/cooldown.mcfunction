# Handles Philbert cooldown
scoreboard players remove @s philbertcooldown 1

execute if score @s philbertcooldown matches 1.. run schedule function dumb:philbert/cooldownschedule 1t
execute if score @s philbertcooldown matches 0 run function dumb:recharge/philbertready