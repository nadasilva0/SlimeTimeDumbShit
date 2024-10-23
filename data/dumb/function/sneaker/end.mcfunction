scoreboard players set @s sculkSneakToggle 1

effect clear @a[tag=sneaker] resistance
effect clear @a[tag=sneaker] invisibility

particle minecraft:sculk_soul ~ ~0.5 ~ 0.2 0.5 0.2 0 25 force
playsound minecraft:block.sculk_sensor.clicking player @a ~ ~ ~ 1 0

tag @a[tag=sneaker] remove sneaker