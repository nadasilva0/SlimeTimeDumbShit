## Call this on entities which launch the raycast


# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^-0.03 ^ run function dumb:marksman/raycast
playsound minecraft:custom.marksman_shoot player @a ~ ~ ~ 2 1
execute if score @s vatsactive matches 0 run scoreboard players set @s gundelay 10
execute if score @s vatsactive matches 1 run scoreboard players set @s gundelay 15

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
