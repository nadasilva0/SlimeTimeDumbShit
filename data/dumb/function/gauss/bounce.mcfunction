execute unless block ~0.5 ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-0.5 ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~ ~0.5 ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~-0.5 ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~ ~0.5 air run function dumb:gauss/zplane
execute unless block ~ ~ ~-0.5 air run function dumb:gauss/zplane

# Curve slightly towards nearby enemy
execute positioned ^ ^ ^3 if entity @n[distance=..3,tag=!taubouncecasting,tag=!hitbytau,type=!#slimelib:not_mob] run execute facing entity @n[tag=!taubouncecasting,tag=!hitbytau,type=!#slimelib:not_mob] feet run tp @s ~ ~ ~ ~ ~

scoreboard players remove .pierces tf_rc 2

execute rotated as @s run function dumb:gauss/raycast_charge0