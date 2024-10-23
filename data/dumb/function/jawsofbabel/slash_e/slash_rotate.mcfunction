function dumb:jawsofbabel/slash_e/start_raycast
###execute as @a[tag=has_jaws] at @s run function dumb:jawsofbabel/start_front_raycast
tp @s @a[tag=has_jaws,limit=1,sort=nearest]
tp @s ~ ~ ~ ~-60 ~

scoreboard players remove @s loopCount 1
execute if score @s loopCount matches 1.. run schedule function dumb:jawsofbabel/slash_e/slash_rotate_schedule 2t
##execute if score @s loopCount matches ..0 run tag @a[tag=slash_raycasting] remove slash_raycasting
execute if score @s loopCount matches ..0 run kill @s