playsound minecraft:custom.erupt master @a ~ ~ ~ 0.5 1
playsound minecraft:entity.warden.attack_impact master @a ~ ~ ~ 0.5 1

execute as @e[distance=..2,tag=!slamcaster] at @s run damage @s 15 minecraft:explosion by @a[tag=slamcaster,limit=1,sort=nearest]
#effect give @a[distance=..2,tag=!slamcaster] minecraft:darkness 10 1 true

particle minecraft:sculk_soul ~ ~ ~ 0.2 1.5 0.2 0 50 normal
particle minecraft:soul_fire_flame ~ ~ ~ 0.2 1.5 0.2 0 50 normal

tp @s ~ ~ ~ facing entity @p[distance=..10,tag=!slamcaster]
tp @s ^ ^ ^0.78

scoreboard players remove @s[scores={projdist=1..}] projdist 1
execute if score @s projdist matches 1.. run schedule function dumb:crossfade/slam 3t
execute if score @s projdist matches 0 run schedule function dumb:crossfade/gigaslam 17t