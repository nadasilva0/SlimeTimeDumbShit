## Run from meteor:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,tag=!rifterang_thrower,type=!#slimelib:not_mob,dx=0] positioned ~-0.50 ~-0.50 ~-0.50 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function dumb:rifterang/return/collide
execute as @e[tag=rifterang_thrower,type=!#slimelib:not_mob,dx=0] positioned ~-0.50 ~-0.50 ~-0.50 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function dumb:rifterang/return/collide_thrower
execute positioned ^ ^ ^.5 unless block ^ ^ ^ #slimelib:raycast_pass run function dumb:rifterang/throw/collide_ground

scoreboard players add .distance tf_rc 1

# Make raycast visible
particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force
particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0.3 1 force

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute if score .distance tf_rc matches ..600 positioned ^ ^ ^0.49 rotated ~ ~ run function dumb:rifterang/return/raycast
