## Run from meteor:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,type=!#slimelib:not_mob,dx=0] positioned ~-0.50 ~-0.50 ~-0.50 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function dumb:gauss/collide_charge3
scoreboard players add .distance tf_rc 1

# Make raycast visible
#particle dust{color:[1.000,0.700,0.000],scale:1.5} ~ ~ ~ 0 0 0 0 1 force
particle electric_spark ~ ~ ~ 0 0 0 1 1 force
particle wax_on ~ ~ ~ 0 0 0 0 1 force

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance tf_rc matches ..1000 positioned ^ ^ ^0.3 rotated ~ ~ if block ~ ~ ~ #slimelib:raycast_pass run function dumb:gauss/raycast_charge3
