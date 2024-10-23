scoreboard players set @s sculkSneakToggle 0

tag @s add sneaker
function dumb:sneaker/effect

effect give @s minecraft:resistance infinite 6 true
effect give @s minecraft:invisibility infinite 1 true

particle minecraft:sculk_soul ~ ~0.5 ~ 0.2 0.5 0.2 0 25 force
playsound minecraft:block.sculk_sensor.clicking player @a ~ ~ ~ 1 0