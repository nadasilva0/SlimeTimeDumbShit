## Call this on entities which launch the raycast

# Tag prevents current caster from being detected
tag @s add raycasting
tag @s add rifterang_thrower

clear @s minecraft:carrot_on_a_stick[custom_data={rifterang:1b}] 1

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function dumb:rifterang/throw/raycast

playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
