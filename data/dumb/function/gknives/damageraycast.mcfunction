## Call this on entities which launch the raycast

# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function dumb:gknives/damage/raycast
playsound minecraft:custom.gknifeshoot master @a ~ ~ ~ 1 2

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
