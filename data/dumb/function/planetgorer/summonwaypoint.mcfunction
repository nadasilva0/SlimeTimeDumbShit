execute as @e[type=minecraft:item_display,tag=wgorer_waypoint,limit=1] at @s run forceload remove ~ ~

kill @e[type=minecraft:item_display,tag=wgorer_waypoint]
execute positioned ~ ~2 ~ run summon item_display ^ ^ ^2 {billboard:"vertical",item_display:"head",Tags:["wgorer_waypoint"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,0f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":2}}}
particle minecraft:sweep_attack ^ ^1.6 ^1 0 0 0 0 1 force
playsound minecraft:custom.rift master @s ~ ~ ~ 1 2
schedule function dumb:planetgorer/animate_waypoint 3t

##forceloads the chunk
execute as @e[type=minecraft:item_display,tag=wgorer_waypoint,limit=1] at @s run forceload add ~ ~