## Run from meteor:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycasting,tag=!hitbytau,type=!#slimelib:not_mob,dx=0] positioned ~-0.50 ~-0.50 ~-0.50 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function dumb:gauss/collide_charge0
scoreboard players add .distance tf_rc 1

# Make raycast visible
#particle dust{color:[1.000,0.500,0.000],scale:0.5} ~ ~ ~ 0 0 0 0 1 force
particle trail{color:[1.000,0.750,0.450],target:[0,0,0],duration:1} ~ ~ ~ 0 0 0 1 0 normal

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path

execute if score .distance tf_rc matches 499.. run tag @a remove taubouncecasting
execute if score .pierces tf_rc matches ..0 run tag @a remove taubouncecasting

## Controls bouncing
execute unless score .pierces tf_rc matches ..0 if score .distance tf_rc matches ..500 unless block ^ ^ ^0.1 #slimelib:raycast_pass run function dumb:gauss/bounce
execute unless score .pierces tf_rc matches ..0 if score .distance tf_rc matches ..500 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #slimelib:raycast_pass run function dumb:gauss/raycast_charge0
schedule function dumb:gauss/hittagclear 1t