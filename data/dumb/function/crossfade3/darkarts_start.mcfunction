scoreboard players set @s genericcooldown 80
scoreboard players set @s projdist 15
tag @s add darkarts
function dumb:crossfade3/darkarts_effect

effect give @s minecraft:speed 1 20 true
effect give @s minecraft:resistance 1 6 true
effect give @s minecraft:invisibility 1 1 true

item replace entity @s armor.head with air 1
item replace entity @s armor.chest with air 1
item replace entity @s armor.legs with air 1
item replace entity @s armor.feet with air 1
item replace entity @s weapon.mainhand with air 1


particle minecraft:sculk_soul ~ ~0.5 ~ 0.2 0.5 0.2 0 25 force
playsound minecraft:block.sculk_sensor.clicking player @a ~ ~ ~