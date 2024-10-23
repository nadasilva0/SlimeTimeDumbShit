execute as @e[type=item_display,tag=glaiveportal] at @s run function dumb:crossfade2/start_raycast_harmless
kill @e[type=minecraft:item_display,tag=glaivestrike]
execute as @e[type=item_display,tag=glaiveportal] run data merge entity @s {start_interpolation:-1,interpolation_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
schedule function dumb:crossfade2/removeallportals 20t