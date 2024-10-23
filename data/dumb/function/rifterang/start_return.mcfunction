## Call this on entities which launch the raycast

kill @e[type=armor_stand,tag=rifterang_grounded]

# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function dumb:rifterang/return/raycast

playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 2

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
