## Run from meteor:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,type=!#slimelib:not_mob,dx=0] positioned ~-0.10 ~-0.10 ~-0.10 if entity @s[dx=0] positioned ~0.10 ~0.10 ~0.10 run function dumb:icemagic/collide
execute positioned ^ ^ ^.4 unless block ^ ^ ^ #slimelib:raycast_pass run function dumb:icemagic/collide_block

scoreboard players add .distance tf_rc 1

# Make raycast visible
##particle minecraft:snowflake ~ ~ ~ 0.2 0.2 0.2 0.02 2 force
particle minecraft:item_snowball ~ ~ ~ 0.1 0.1 0.1 0.01 1 force
particle minecraft:poof ~ ~ ~ 0 0 0 0 1 force

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance tf_rc matches ..10 positioned ^ ^ ^0.4 rotated ~ ~0.01 run function dumb:icemagic/raycast
