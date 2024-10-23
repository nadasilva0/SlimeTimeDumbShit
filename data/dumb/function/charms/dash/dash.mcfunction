scoreboard players set @s charmcooldown 120
##scoreboard players set @s disabletick 5
tag @s add disablespeed
schedule function dumb:charms/dash/dashdisable 5t
effect give @s minecraft:speed 1 30 true
particle minecraft:cloud ~ ~ ~ 0.2 0.8 0.2 0 50 force
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 2