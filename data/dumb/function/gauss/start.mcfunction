execute if score @s gausscharge matches 1..4 run function dumb:gauss/start_raycast_charge0
execute if score @s gausscharge matches 5..28 run function dumb:gauss/start_raycast_charge1
execute if score @s gausscharge matches 29..69 run function dumb:gauss/start_raycast_charge2
execute if score @s gausscharge matches 69..99 run function dumb:gauss/start_raycast_charge3


tag @a remove hearingTauCharge
stopsound @a player minecraft:custom.gausscharge

scoreboard players set @s gausscharge 0