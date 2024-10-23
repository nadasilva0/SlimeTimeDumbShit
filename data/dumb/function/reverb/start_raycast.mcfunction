## Call this on entities which launch the raycast

# Tag prevents current caster from being detected
tag @s add raycasting

item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='{"bold":true,"color":"#052A32","italic":true,"text":"Reverb"}',unbreakable={},custom_data={reverb:1b},attribute_modifiers=[{id:"generic.attack_damage",type:"generic.attack_damage",amount:12,operation:"add_value",slot:"mainhand"},{id:"generic.attack_speed",type:"generic.attack_speed",amount:-3.4,operation:"add_value",slot:"mainhand"}]] 1
tag @s remove shriek

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function dumb:reverb/raycast


playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 1 1

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
