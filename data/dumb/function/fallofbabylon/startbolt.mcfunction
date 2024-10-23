title @a clear

scoreboard players set @s abilitytype 0
summon interaction ~ ~ ~ {Tags:["purgatory"]}

tp @e[type=interaction,tag=purgatory,distance=..1] @s
tp @e[type=interaction,tag=purgatory,distance=..1] ~ ~2 ~

playsound minecraft:custom.demon_hit07 master @a ~ ~ ~ 1 1
scoreboard players set @e[type=interaction,tag=purgatory] projdist 200
execute as @e[type=interaction,tag=purgatory] at @s run function dumb:fallofbabylon/boltschedule

scoreboard players remove @s[scores={lightnumber=1..}] lightnumber 1
execute if score @s lightnumber matches 1.. run schedule function dumb:fallofbabylon/startboltschedule 20t
execute if score @s lightnumber matches 0 run schedule function dumb:fallofbabylon/end 20t