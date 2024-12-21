## Call this on entities which launch the raycast

clear @s golden_horse_armor[custom_data={railgun:1b,usable:true}]
item replace entity @s container.3 with golden_horse_armor[item_model="slimetime:railgun_cooldown1",custom_name='{"color":"#00D5FF","italic":false,"text":"Railgun"}',lore=['{"color":"#00D5FF","text":"[ 0 / 5 ]"}','"WARNING: WILL REPLACE SLOT 4"']] 1
tag @s add railguncharging

# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^-0.03 ^ run function dumb:railgun/raycast
playsound minecraft:custom.railgun_shoot player @a ~ ~ ~ 1 1

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
schedule function dumb:railgun/chargeschedule2 10s
scoreboard players reset .distance tf_rc
