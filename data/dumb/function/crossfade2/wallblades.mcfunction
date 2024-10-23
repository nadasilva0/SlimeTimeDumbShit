## Summons the glaives ##
execute as @e[type=minecraft:item_display,tag=gp1] at @s run summon item_display ~ ~ ~ {item_display:"head",Tags:["glaivestrike","gs1","crossfadeglaive"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1.5f,1.5f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":'{"text":"Glaive Strike"}'}}}
tp @e[type=minecraft:item_display,tag=gs1,limit=1] @e[type=minecraft:item_display,tag=gp1,limit=1]

execute as @e[type=minecraft:item_display,tag=gp2] at @s run summon item_display ~ ~ ~ {item_display:"head",Tags:["glaivestrike","gs2","crossfadeglaive"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1.5f,1.5f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":'{"text":"Glaive Strike"}'}}}
tp @e[type=minecraft:item_display,tag=gs2,limit=1] @e[type=minecraft:item_display,tag=gp2,limit=1]

execute as @e[type=minecraft:item_display,tag=gp3] at @s run summon item_display ~ ~ ~ {item_display:"head",Tags:["glaivestrike","gs3","crossfadeglaive"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1.5f,1.5f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":'{"text":"Glaive Strike"}'}}}
tp @e[type=minecraft:item_display,tag=gs3,limit=1] @e[type=minecraft:item_display,tag=gp3,limit=1]

execute as @e[type=item_display,tag=glaiveportal] at @s run function dumb:crossfade2/start_raycast

execute at @a[tag=glaiver] run playsound minecraft:custom.wall_glaive_strike player @a ~ ~ ~ 2 1

schedule function dumb:crossfade2/removeblades 2s