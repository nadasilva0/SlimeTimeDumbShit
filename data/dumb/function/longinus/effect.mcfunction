##playsound minecraft:custom.erupt master @a ~ ~ ~ 0.5 1

scoreboard players remove @s[scores={projdist=1..}] projdist 1

execute as @s at @s run kill @e[type=!area_effect_cloud,type=!armor_stand,type=!item_frame,type=!item,tag=!longcaster,distance=0..3,limit=1,sort=nearest]

execute as @s at @s if block ^ ^ ^0.3 #slimelib:raycast_pass run tp @s ^ ^ ^2

schedule function dumb:longinus/effectschedule 1t
execute as @s at @s unless block ^ ^ ^0.3 #slimelib:raycast_pass run function dumb:longinus/end
execute if score @s projdist matches 0 run function dumb:longinus/end