## Call this on entities which launch the raycast

scoreboard players set @s sniperammo 0
tp @s ~ ~ ~ ~ ~-5
scoreboard players set @s gundelay 0
execute as @a[distance=10..128] at @s run playsound minecraft:custom.sniperdistant player @s

# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function dumb:guns/sniper/raycast
playsound minecraft:custom.snipershot player @a ~ ~ ~ 2 1

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
