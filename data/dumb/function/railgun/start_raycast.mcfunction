## Call this on entities which launch the raycast

item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='{"color":"#00D5FF","italic":false,"text":"Railgun"}',custom_data={railgun:1b}] 1

# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function dumb:railgun/raycast
playsound minecraft:custom.railgun_shoot player @a ~ ~ ~ 1 1

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
tag @s remove charge
scoreboard players reset .distance tf_rc
