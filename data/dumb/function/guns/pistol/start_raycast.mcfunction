## Call this on entities which launch the raycast

scoreboard players remove @s[scores={pistolammo=1..}] pistolammo 1
tp @s ~ ~ ~ ~ ~-1
scoreboard players set @s gundelay 1

# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function dumb:guns/pistol/raycast
playsound minecraft:custom.turret player @a ~ ~ ~ 2 1

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
