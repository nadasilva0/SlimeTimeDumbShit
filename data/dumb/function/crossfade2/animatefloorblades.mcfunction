execute as @e[type=item_display,tag=glaivestrike] run data merge entity @s {start_interpolation:-1,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,7.8f],scale:[1f,1.5f,1.5f]}}
execute as @e[type=item_display,tag=glaivestrike] at @s run function dumb:crossfade2/start_raycast
execute at @a[tag=glaiver] run playsound minecraft:custom.floor_glaive_strike player @a ~ ~ ~ 1 1

schedule function dumb:crossfade2/shrinkfloorblades 40t