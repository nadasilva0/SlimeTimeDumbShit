## Run from meteor:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,type=!#slimelib:not_mob,dx=0] positioned ~-0.05 ~-0.05 ~-0.05 if entity @s[dx=0] positioned ~0.05 ~0.05 ~0.05 run function dumb:guns/shotgun/collide

# tag=!raycasting,

scoreboard players add .distance tf_rc 1

# Make raycast visible
particle minecraft:dust{color:[0.000,0.000,0.000],scale:0.1} ~ ~ ~ 0 0 0 0 1 force
#particle minecraft:dripping_obsidian_tear ~ ~ ~ 0 0 0 0 1 force

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance tf_rc matches ..150 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slimelib:raycast_pass run function dumb:guns/shotgun/raycast
