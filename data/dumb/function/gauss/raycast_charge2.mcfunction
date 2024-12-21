## Run from meteor:start_raycast
execute if block ~ ~ ~ #slimelib:raycast_pass if score .passthrough tf_rc matches 1 run function dumb:gauss/wallpierceout
# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,tag=!coin,tag=!hitbytau,type=!#slimelib:not_mob,dx=0] positioned ~-0.50 ~-0.50 ~-0.50 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function dumb:gauss/collide_charge2
execute as @e[tag=!raycasting,type=slime,tag=coin,dx=0] positioned ~-0.50 ~-0.50 ~-0.50 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function dumb:gauss/collide_coinnuke_small
execute unless block ~ ~ ~ #slimelib:raycast_pass unless score .passthrough tf_rc matches 1 run function dumb:gauss/wallpierceparticle
scoreboard players add .distance tf_rc 1

# Make raycast visible
#particle dust{color:[1.000,0.700,0.000],scale:1.5} ~ ~ ~ 0 0 0 0 1 force
#particle electric_spark ~ ~ ~ 0 0 0 1 1 force
particle trail{color:[1.000,1.000,0.900],target:[0,0,0],duration:1} ~ ~ ~ 0 0 0 1 0 force

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path
execute unless score .pierces tf_rc matches ..0 if score .distance tf_rc matches ..500 positioned ^ ^ ^0.1 rotated ~ ~ run function dumb:gauss/raycast_charge2
schedule function dumb:gauss/hittagclear 1t