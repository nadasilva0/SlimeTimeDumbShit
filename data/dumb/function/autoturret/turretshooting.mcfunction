scoreboard players remove @s[scores={turretdelay=1..}] turretdelay 1

execute as @s[scores={turretdelay=0,turretbarrel=0}] at @s run function dumb:autoturret/start_raycast_left
execute as @s[scores={turretdelay=0,turretbarrel=1}] at @s run function dumb:autoturret/start_raycast_right

item replace entity @s armor.head with carved_pumpkin[custom_name='{"text":"Autoturret Active"}'] 1