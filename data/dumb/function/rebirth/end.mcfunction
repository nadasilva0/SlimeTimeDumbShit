particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 0.1 2 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2 1
scoreboard players add @p[distance=..1] hp_dmg 1

tag @a[tag=reborn] remove reborn
kill @s