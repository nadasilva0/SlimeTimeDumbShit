## Call this on entities which launch the raycast

scoreboard players remove @s[scores={bigironammo=1..}] bigironammo 1
tp @s ~ ~ ~ ~ ~-0.5
title @s actionbar ["",{"text":"[ ","color":"gold"},{"score":{"name":"@s","objective":"bigironammo"},"color":"gold"},{"text":"/6 ]","color":"gold"}]

# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function dumb:guns/bigiron/raycast
playsound minecraft:custom.bigiron player @a ~ ~ ~ 1 1

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
