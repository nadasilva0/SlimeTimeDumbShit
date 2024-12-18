scoreboard players set @s hold_cooldown 2
scoreboard players add @s gausscharge 1

playsound minecraft:custom.gausscharge player @a[tag=!hearingTauCharge]
tag @a add hearingTauCharge

execute if score @s gausscharge matches 109.. run function dumb:gauss/overcharge

advancement revoke @s only dumb:use_item_cooldown

