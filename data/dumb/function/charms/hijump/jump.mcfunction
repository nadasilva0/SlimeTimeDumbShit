scoreboard players set @s charmcooldown 75
##scoreboard players set @s disabletick 1
tag @s add disablejump
schedule function dumb:charms/hijump/jumpdisable 2t
effect give @s levitation 1 100 true
particle minecraft:cloud ~ ~ ~ 0.8 0.01 0.8 0.01 40 force
particle minecraft:cloud ~ ~ ~ 0.1 1 0.1 0.01 40 force
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 2