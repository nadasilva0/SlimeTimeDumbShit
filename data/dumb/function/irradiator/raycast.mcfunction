## Run from meteor:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,type=!#slimelib:not_mob,dx=0] positioned ~-0.50 ~-0.50 ~-0.50 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function dumb:irradiator/collide

scoreboard players add .distance tf_rc 1

# Make raycast visible
particle dust_color_transition{from_color:[0.058,1.000,0.992],scale:1,to_color:[0.058,0.525,1.000]} ~ ~ ~ 0 0 0 1 1 force

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance tf_rc matches ..5000 positioned ^ ^ ^0.1 rotated ~ ~0.03 if block ~ ~ ~ #slimelib:raycast_pass run function dumb:irradiator/raycast
