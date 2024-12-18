title @a clear
attribute @s minecraft:gravity base set 0

scoreboard players set @s abilitytype 0
summon interaction ~ ~ ~ {Tags:["rebirthbolt"]}

tp @e[type=interaction,tag=rebirthbolt,distance=..1] @s
tp @e[type=interaction,tag=rebirthbolt,distance=..1] ~ ~2 ~

playsound minecraft:custom.lightballcast master @a ~ ~ ~ 1 1
scoreboard players set @e[type=interaction,tag=rebirthbolt] projdist 200
execute as @e[type=interaction,tag=rebirthbolt] at @s run function dumb:rebirth/boltschedule

scoreboard players remove @s[scores={lightnumber=1..}] lightnumber 1
execute if score @s lightnumber matches 1.. run schedule function dumb:rebirth/startboltschedule 7t
execute if score @s lightnumber matches 0 run schedule function dumb:rebirth/endschedule 2s