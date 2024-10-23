## Call this on entities which launch the raycast


# Tag prevents current caster from being detected
tag @s add raycasting
tp @s ~ ~ ~ facing entity @n[tag=!raycasting,type=!#slimelib:nottargetable]

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function dumb:lookatizer/raycast
playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 2 1

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
