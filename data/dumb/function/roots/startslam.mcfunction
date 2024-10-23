scoreboard players set @s genericcooldown 400
tag @s add rootslamcaster
tp @s ~ ~ ~ ~ 0
summon interaction ^ ^ ^ {Tags:["rootslamcreature"]}
tp @e[type=interaction,tag=rootslamcreature] @s
execute at @e[type=interaction,tag=rootslamcreature] run playsound minecraft:custom.rootprep master @a ~ ~ ~ 1 1
scoreboard players set @e[tag=rootslamcreature] projdist 8
schedule function dumb:roots/slam 5t