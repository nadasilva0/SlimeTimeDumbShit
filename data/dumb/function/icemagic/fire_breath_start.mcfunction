## Call this on entities which launch the raycast

# Tag prevents current caster from being detected
tag @s add raycasting
function dumb:icemagic/freezedamage

effect give @s minecraft:slowness 1 6

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^-0.3 ^ run function dumb:icemagic/raycast


# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc

function dumb:icemagic/fire_sound
function dumb:icemagic/fire_stop_sound
