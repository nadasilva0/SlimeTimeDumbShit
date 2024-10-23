## Run from tf_raycast:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute positioned ~-1 ~-1 ~-1 as @e[tag=!raycasting,type=!#slimelib:not_mob,dx=1,dy=1,dz=1] run function dumb:reverb/collide

scoreboard players add .distance tf_rc 1

# Make raycast visible
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 0

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance tf_rc matches ..15 positioned ^ ^ ^1 rotated ~ ~ unless block ~ ~ ~ #minecraft:dampens_vibrations run function dumb:reverb/raycast
