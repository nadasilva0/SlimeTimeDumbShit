playsound minecraft:custom.erupt master @a ~ ~ ~ 0.5 1

execute as @e[distance=..1,tag=!slamcaster] at @s run damage @s 10 minecraft:explosion by @a[tag=slamcaster,limit=1,sort=nearest]

particle minecraft:soul_fire_flame ~ ~ ~ 0.2 1.5 0.2 0 100 normal
tp @s ~ ~ ~ facing entity @p[distance=..2,tag=!slamcaster]
tp @s ^ ^ ^1.8
scoreboard players remove @s[scores={projdist=1..}] projdist 1
execute if score @s projdist matches 1.. run schedule function dumb:seismslam/slam 2t
execute if score @s projdist matches 0 run schedule function dumb:seismslam/gigaslam 6t