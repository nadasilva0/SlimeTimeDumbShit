scoreboard players set @s genericcooldown 200
tag @s add slamcaster
tp @s ~ ~ ~ ~ 0
summon interaction ^ ^ ^ {Tags:["slamcreature"]}
tp @e[type=interaction,tag=slamcreature] @s
execute at @e[type=interaction,tag=slamcreature] run playsound minecraft:custom.eruptstart master @a ~ ~ ~ 2 1
scoreboard players set @e[type=interaction,tag=slamcreature] projdist 6
schedule function dumb:seismslam/slam 15t