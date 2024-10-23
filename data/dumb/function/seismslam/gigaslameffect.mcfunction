playsound minecraft:custom.eruptlarge master @a ~ ~ ~ 0.5 1
execute as @e[distance=..3,tag=!slamcaster] at @s run damage @s 20 minecraft:explosion by @a[tag=slamcaster,limit=1,sort=nearest]

particle minecraft:soul_fire_flame ~ ~ ~ 0.5 3.5 0.5 0 400 normal
kill @s
tag @a[tag=slamcaster] remove slamcaster