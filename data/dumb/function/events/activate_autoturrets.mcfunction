# Handles the Ikoss Auto-Turret
execute as @e[type=villager,tag=autoturret] at @s run function dumb:autoturret/turret
schedule function dumb:events/activate_autoturrets 2t