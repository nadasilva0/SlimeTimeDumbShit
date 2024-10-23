execute if score @s luck matches 85 run playsound minecraft:custom.crit player @a ~ ~ ~

execute store result score @s luck run random value 1..100
## Debug
#scoreboard players set @s luck 85

execute unless score @s luck matches 85 run attribute @s minecraft:generic.attack_damage modifier remove 1-1-1-1-1
execute if score @s luck matches 85 run attribute @s minecraft:generic.attack_damage modifier add 1-1-1-1-1 2 add_multiplied_total

advancement revoke @s only dumb:luckessence_crit