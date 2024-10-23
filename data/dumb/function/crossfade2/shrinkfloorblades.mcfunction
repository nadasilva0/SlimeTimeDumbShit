execute as @e[type=item_display,tag=glaivestrike] at @s run function dumb:crossfade2/start_raycast_harmless
execute as @e[type=item_display,tag=glaivestrike] run data merge entity @s {start_interpolation:-1,interpolation_duration:4,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1.5f,1.5f]}}

schedule function dumb:crossfade2/removeblades_floor 3t