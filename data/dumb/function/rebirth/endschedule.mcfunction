attribute @a[tag=reborn,limit=1] minecraft:gravity base set 0.08
effect give @a[tag=reborn,limit=1] slow_falling 4 0 true
execute as @e[type=interaction,tag=rebirthbolt] at @s run function dumb:rebirth/end