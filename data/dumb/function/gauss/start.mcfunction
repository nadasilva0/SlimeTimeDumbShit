execute if score @s gausscharge matches 1..10 run function dumb:gauss/start_raycast_charge0
execute if score @s gausscharge matches 11..20 run function dumb:gauss/start_raycast_charge1
execute if score @s gausscharge matches 21..69 run function dumb:gauss/start_raycast_charge2
execute if score @s gausscharge matches 69..109 run function dumb:gauss/start_raycast_charge3


tag @a remove hearingTauCharge
stopsound @a player minecraft:custom.gausscharge

scoreboard players set @s gausscharge 0