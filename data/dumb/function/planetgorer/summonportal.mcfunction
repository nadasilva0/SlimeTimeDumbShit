kill @e[type=minecraft:item_display,tag=wgorer_rift]
execute positioned ~ ~2 ~ run summon item_display ^ ^ ^2 {billboard:"vertical",item_display:"head",Tags:["wgorer_rift"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,0f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"slimetime:choo_rift"}}}
particle minecraft:sweep_attack ^ ^1.6 ^1 0 0 0 0 1 force
playsound minecraft:custom.rift master @s ~ ~ ~ 1 1
schedule function dumb:planetgorer/animate_rift 3t

scoreboard players set .wgorer_life projdist 60
function dumb:planetgorer/activate_wgorer