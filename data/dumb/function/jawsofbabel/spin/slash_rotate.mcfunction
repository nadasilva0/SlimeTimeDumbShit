function dumb:jawsofbabel/spin/start_raycast
tp @s ~ ~ ~ ~60 ~
execute as @a[tag=has_jaws] at @s run tp @s ~ ~ ~ ~60 ~
tag @e[tag=hitBySword] remove hitBySword


scoreboard players remove @s loopCount 1
execute if score @s loopCount matches 1.. run schedule function dumb:jawsofbabel/spin/slash_rotate_schedule 1t

##execute if score @s loopCount matches ..0 run tag @a[tag=slash_raycasting] remove slash_raycasting
execute if score @s loopCount matches ..0 run kill @s