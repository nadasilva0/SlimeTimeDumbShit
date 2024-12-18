## Call this on entities which launch the raycast

playsound minecraft:custom.railgun_shoot player @a ~ ~ ~ 1 1
# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function dumb:railgun/raycast_coin
#execute as @a at @s run playsound minecraft:custom.ricoshot player @s ~ ~ ~ 10 1
kill @s

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
