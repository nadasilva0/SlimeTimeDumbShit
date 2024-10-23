## Run from meteor:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,type=!#slimelib:not_mob,dx=0] positioned ~-0.50 ~-0.50 ~-0.50 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function dumb:lookatizer/collide

scoreboard players add .distance tf_rc 1

# Make raycast visible
particle dust{color:[0.722,0.953,0.914],scale:0.5} ~ ~ ~ 0 0 0 1 0 force

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path 
execute if score .distance tf_rc matches ..1000 positioned ^ ^ ^0.1 rotated ~ ~ facing entity @e[tag=!raycasting,type=!#slimelib:nottargetable,sort=nearest] eyes run function dumb:lookatizer/raycast
