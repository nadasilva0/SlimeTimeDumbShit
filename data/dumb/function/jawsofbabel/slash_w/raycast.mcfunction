## Run from meteor:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[tag=!has_jaws,type=!#slimelib:not_mob,dx=2,dy=2,dz=2] run function dumb:jawsofbabel/collide

scoreboard players add .distance tf_rc 1

# Make raycast visible
particle minecraft:electric_spark ^0.7 ^ ^0.7 0 0 0 0.01 1 force
particle dust{color:[1.000,0.330,0.330],scale:1} ^0.3 ^ ^0.3 0 0 0 0.01 1 force
particle dust{color:[0.670,0.000,0.000],scale:1} ^0 ^ ^0 0 0 0 0.01 1 force
particle dust{color:[0.400,0.270,0.270],scale:1} ^-0.3 ^ ^-0.3 0 0 0 0.01 1 force
particle dust{color:[0.140,0.040,0.110],scale:1} ^-0.5 ^ ^-0.5 0 0 0 0.01 1 force
particle dust{color:[0.000,0.000,0.000],scale:1} ^-0.8 ^ ^-0.8 0 0 0 0.01 1 force

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance tf_rc matches ..30 positioned ^ ^ ^0.1 rotated ~2 ~ run function dumb:jawsofbabel/slash_w/raycast
