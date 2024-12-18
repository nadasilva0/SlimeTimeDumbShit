# Tau Cannon
execute if entity @s[scores={genericcooldown=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{gaussgun:1b}}}}] run function dumb:gauss/start_raycast

## Pixels
# Big Iron
execute if entity @s[scores={gundelay=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{bigiron:1b}}}}] run function dumb:guns/bigiron/reload
# Marksman
execute if entity @s[scores={genericcooldown=..0,vatsactive=0},nbt={SelectedItem:{components:{"minecraft:custom_data":{marksman:1b}}}}] run function dumb:marksman/coin
execute if entity @s[scores={genericcooldown=..0,vatsactive=1},nbt={SelectedItem:{components:{"minecraft:custom_data":{marksman:1b}}}}] run function dumb:marksman/coin_vats
# Pipboy
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{pipboy:1b}}}}] run function dumb:pipboy/vatsstart

advancement revoke @s only dumb:use_item_sneak