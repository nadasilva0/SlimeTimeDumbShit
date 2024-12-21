## Call this on entities which launch the raycast

scoreboard players reset .passthrough tf_rc
# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^-0.03 ^ run function dumb:gauss/raycast_charge2

# comedical knockback
execute rotated ~ 0 run tp @e[type=ghast,tag=gauss_jump] ^ ^ ^0.6
schedule function dumb:gauss/gaussremove 5t
playsound minecraft:custom.gaussfire player @a ~ ~ ~ 1 1

scoreboard players set @s gundelay 5

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
scoreboard players set .pierces tf_rc 10