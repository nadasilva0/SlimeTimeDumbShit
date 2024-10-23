## Call this on entities which launch the raycast

# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute unless entity @s[tag=boxcutterihardlyknower] anchored eyes positioned ^ ^ ^ run function dumb:boxcutter/raycast
advancement revoke @s only dumb:boxcutter

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @a add boxcutterihardlyknower
tag @s remove raycasting
scoreboard players reset .distance tf_rc
