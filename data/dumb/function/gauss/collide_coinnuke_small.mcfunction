playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1
particle minecraft:explosion ~ ~ ~ 0.4 0.4 0.4 0 4 force
execute as @e[distance=..4] at @s run damage @s 22 minecraft:explosion by @a[tag=raycasting,limit=1,sort=nearest]
particle minecraft:electric_spark ~ ~1 ~ 0.1 0.1 0.1 0.4 20 force
particle minecraft:flash ~ ~1 ~
scoreboard players set .distance tf_rc 500