tag @s add glaiver
scoreboard players set @s reverbshriekcooldown 180

playsound minecraft:custom.wall_portals_open player @a ~ ~ ~ 1 1

## Summons glaive portals and moves them into position ##
tp @s ~ ~ ~ ~ 0
summon item_display ~ ~ ~ {start_interpolation:0,item_display:"head",Tags:["glaiveportal","gp1","crossfadeglaive"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":'{"text":"Glaive Portal"}'}}}
tp @e[type=minecraft:item_display,tag=gp1] SlimeyBeeSauce
execute as @e[type=minecraft:item_display,tag=gp1] at @s run tp ~ ~1 ~
execute as @e[type=minecraft:item_display,tag=gp1] at @s run tp ^ ^ ^2

tp @s ~ ~ ~ ~ -30
summon item_display ~ ~ ~ {start_interpolation:0,item_display:"head",Tags:["glaiveportal","gp2","crossfadeglaive"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":'{"text":"Glaive Portal"}'}}}
tp @e[type=minecraft:item_display,tag=gp2] SlimeyBeeSauce
execute as @e[type=minecraft:item_display,tag=gp2] at @s run tp ~ ~1 ~
execute as @e[type=minecraft:item_display,tag=gp2] at @s run tp ^ ^ ^2

tp @s ~ ~ ~ ~ -60
summon item_display ~ ~ ~ {start_interpolation:0,item_display:"head",Tags:["glaiveportal","gp3","crossfadeglaive"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":'{"text":"Glaive Portal"}'}}}
tp @e[type=minecraft:item_display,tag=gp3] SlimeyBeeSauce
execute as @e[type=minecraft:item_display,tag=gp3] at @s run tp ~ ~1 ~
execute as @e[type=minecraft:item_display,tag=gp3] at @s run tp ^ ^ ^2

tp @s ~ ~ ~ ~0 0
schedule function dumb:crossfade2/wallblades 11t
schedule function dumb:crossfade2/animateportals 2t