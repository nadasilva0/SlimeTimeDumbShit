execute as @e[type=item_display,tag=wgorer_waypoint] run data merge entity @s {start_interpolation:-1,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute as @e[type=item_display,tag=wgorer_waypoint] at @s run particle minecraft:reverse_portal ~ ~2 ~ 0 0 0 0.1 1 force
playsound minecraft:custom.rift master @s ~ ~ ~ 1 0

schedule function dumb:planetgorer/killwaypoint 5t