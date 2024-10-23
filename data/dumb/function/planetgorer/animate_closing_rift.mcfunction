execute as @e[type=item_display,tag=wgorer_rift] run data merge entity @s {start_interpolation:-1,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute as @e[type=item_display,tag=wgorer_rift] at @s run particle minecraft:reverse_portal ~ ~2 ~ 0 0 0 0.1 1 force

schedule function dumb:planetgorer/killrift 5t