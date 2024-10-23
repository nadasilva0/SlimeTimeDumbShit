playsound minecraft:custom.eruptlarge master @a ~ ~ ~ 0.5 1
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 1

execute as @e[distance=..5,tag=!slamcaster] at @s run damage @s 15 minecraft:sonic_boom by @a[tag=slamcaster,limit=1,sort=nearest]
effect give @e[distance=..5,tag=!slamcaster,team=!sculk] minecraft:darkness 15 1 true

particle minecraft:sculk_soul ~ ~2 ~ 1 3.5 1 0 400 normal
particle minecraft:soul_fire_flame ~ ~2 ~ 1 3.5 1 0 400 normal
particle minecraft:sonic_boom ~ ~2 ~ 1 3.5 1 0 25 normal

kill @s
tag @a[tag=slamcaster] remove slamcaster