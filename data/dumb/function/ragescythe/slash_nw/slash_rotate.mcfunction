function dumb:ragescythe/slash_nw/start_raycast
###execute as @a[tag=has_sword] at @s run function dumb:ragescythe/start_front_raycast
tp @s ~ ~-0.8 ~ ~60 ~

scoreboard players remove @s loopCount 1
execute if score @s loopCount matches 1.. run schedule function dumb:ragescythe/slash_nw/slash_rotate_schedule 2t
execute if score @s loopCount matches ..0 run tag @a[tag=slash_raycasting] remove slash_raycasting
execute if score @s loopCount matches ..0 run kill @s