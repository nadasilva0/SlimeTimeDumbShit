## Call this on entities which launch the raycast


# Tag prevents current caster from being detected
tag @s add raycasting
tag @s add babel

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^-0.3 ^ run function dumb:babel/raycast
playsound minecraft:custom.tonguelash player @a ~ ~ ~ 0.6 1
scoreboard players set @s charmcooldown 200

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
tag @s remove babel
