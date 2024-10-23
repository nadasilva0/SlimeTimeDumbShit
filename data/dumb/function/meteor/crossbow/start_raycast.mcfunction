## Call this on entities which launch the raycast

scoreboard players set @a shot_crossbow 0
# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function dumb:meteor/crossbow/raycast
playsound minecraft:block.end_gateway.spawn player @a ~ ~ ~ 1 2
kill @e[type=arrow,nbt={life:0s}]

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
