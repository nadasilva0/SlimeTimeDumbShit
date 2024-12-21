## Call this on entities which launch the raycast

scoreboard players reset .passthrough tf_rc
# Tag prevents current caster from being detected
tag @s add raycasting
tag @s add taubouncecasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
summon area_effect_cloud ~ ~0 ~ {Tags:["bounce"]}
tp @e[type=area_effect_cloud,tag=bounce] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=bounce] positioned ~ ~1.4 ~ run function dumb:gauss/raycast_charge0

stopsound @a player minecraft:custom.gaussfire
playsound minecraft:custom.gaussfire player @a ~ ~ ~ 0.6 1

scoreboard players set @s gundelay 3

execute as @e[type=area_effect_cloud,tag=bounce] run function bounce:raycast/loop

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
scoreboard players set .pierces tf_rc 10
kill @e[type=area_effect_cloud,tag=bounce]
