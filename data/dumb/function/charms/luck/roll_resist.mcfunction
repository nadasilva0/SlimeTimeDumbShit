execute store result score @s luck run random value 1..100

## Debug
#scoreboard players set @s luck 12

execute unless score @s luck matches 12 run effect clear @s minecraft:resistance
execute if score @s luck matches 12 run effect give @s minecraft:resistance infinite 5 true

advancement revoke @s only dumb:luckessence_resist