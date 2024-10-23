summon interaction ~ ~ ~ {Tags:["corruptor"],Rotation:[-180F,0F]}
summon interaction ~ ~ ~ {Tags:["corruptor"],Rotation:[0F,0F]}

summon interaction ~ ~ ~ {Tags:["infector"],Rotation:[-90F,0F]}

fill ~-1 ~30 ~-1 ~1 ~ ~1 minecraft:red_concrete
execute positioned ~ ~25 ~ run fill ~-1 ~-1 ~-7 ~1 ~1 ~7 minecraft:red_concrete

playsound minecraft:custom.lightballcast master @a ~ ~ ~ 1 1
scoreboard players set @e[type=interaction,tag=corruptor] projdist 180
scoreboard players set @e[type=interaction,tag=corruptorsouth] projdist 100
execute as @e[type=interaction,tag=corruptor] at @s run function dumb:fallofbabylon/corrupt
execute as @e[type=interaction,tag=corruptorsouth] at @s run function dumb:fallofbabylon/corrupt