execute if entity @s[nbt=!{Inventory:[{Slot:17b,id:"minecraft:diamond_horse_armor"}]}] run scoreboard players set @s charmtype 0
execute if entity @s[scores={charmcooldown=..0},nbt={Inventory:[{Slot:17b,id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{agility:1b}}}]}] run function dumb:charms/dash/dash
execute if entity @s[scores={charmcooldown=..0},nbt={Inventory:[{Slot:17b,id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{shield:1b}}}]}] run function dumb:charms/shield/shield
#execute if entity @s[scores={charmcooldown=..0},nbt={Inventory:[{Slot:17b,id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{gust:1b}}}]}] run function dumb:charms/gust/gust
execute if entity @s[scores={charmcooldown=..0},nbt={Inventory:[{Slot:17b,id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{hijump:1b}}}]}] run function dumb:charms/hijump/jump
execute if entity @s[scores={charmcooldown=..0},nbt={Inventory:[{Slot:17b,id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{shadow:1b}}}]}] run function dumb:charms/shadows/dash
execute if entity @s[scores={charmcooldown=..0},nbt={Inventory:[{Slot:17b,id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{meteorcharm:1b}}}]}] run function dumb:charms/meteor/meteor
execute if entity @s[scores={charmcooldown=..0},nbt={Inventory:[{Slot:17b,id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{shadow:2b}}}]}] run function dumb:charms/glowsquid/dash
execute if entity @s[scores={charmcooldown=..0},nbt={Inventory:[{Slot:17b,id:"minecraft:diamond_horse_armor",components:{"minecraft:custom_data":{ace:1b}}}]}] run function dumb:charms/ace/boom
execute if entity @s[scores={charmcooldown=..0},nbt={Inventory:[{id:"minecraft:netherite_chestplate",Slot:102b,components:{"minecraft:custom_data":{babelchest:1b}}}]}] run function dumb:babel/start_raycast

scoreboard players set @s iscrouched 0