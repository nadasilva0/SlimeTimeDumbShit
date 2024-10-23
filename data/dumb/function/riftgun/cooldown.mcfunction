# Handles Rift gun cooldown
scoreboard players remove @s riftcooldown 1

execute if score @s riftcooldown matches 1.. run schedule function dumb:riftgun/cooldownschedule 1t
execute if score @s riftcooldown matches 0 run function dumb:riftgunrecharge