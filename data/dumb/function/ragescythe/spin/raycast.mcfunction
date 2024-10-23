## Run from meteor:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute positioned ~-0.6 ~-0.6 ~-0.6 as @e[tag=!has_ragescythe,type=!#slimelib:not_mob,dx=1.6,dy=1.6,dz=1.6] run function dumb:ragescythe/spin/collide

scoreboard players add .distance tf_rc 1

# Make raycast visible
particle minecraft:electric_spark ^-0.5 ^ ^-0.5 0 0 0 0.01 1 force
particle dust{color:[0.816,0.078,0.333],scale:1} ^-0.3 ^ ^-0.3 0 0 0 0.01 1 force
particle dust{color:[0.831,0.082,0.341],scale:1} ^0 ^ ^0 0 0 0 0.01 1 force
particle dust{color:[1.000,0.098,0.412],scale:1} ^0.3 ^ ^0.3 0 0 0 0.01 1 force

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance tf_rc matches ..23 positioned ^ ^ ^0.1 rotated ~-3 ~ run function dumb:ragescythe/spin/raycast
