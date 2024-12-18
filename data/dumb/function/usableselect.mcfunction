# Tau Cannon
execute if entity @s[scores={gundelay=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{gaussgun:1b}}}}] run function dumb:gauss/charge

## Pixels
# Big Iron
execute if entity @s[scores={gundelay=..0,bigironammo=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{bigiron:1b}}}}] run function dumb:guns/bigiron/start
execute if entity @s[scores={gundelay=..0,bigironammo=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{bigiron:1b}}}}] run function dumb:guns/bigiron/reload
# Marksman
execute if entity @s[scores={gundelay=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{marksman:1b}}}}] run function dumb:marksman/start_raycast
#Railgun
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{railgun:1b}}}}] run function dumb:railgun/start_raycast
#Pipboy
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{pipboy:1b}}}}] run function dumb:pipboy/start




advancement revoke @s only dumb:use_item