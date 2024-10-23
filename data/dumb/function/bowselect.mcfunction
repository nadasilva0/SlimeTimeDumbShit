# Turns arrows from the portal gun into lasers
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_data":{portalgun:1b}}}}] run function dumb:portalgun/start_raycast

# Turns arrows from the Irradiator into lasers
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_data":{irradiator:1b}}}}] run function dumb:irradiator/start_raycast

# Makes the Meteorite Bow shoot straight
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_data":{meteorbow:1b}}}}] run data merge entity @e[type=arrow,limit=1,sort=nearest,distance=..2,nbt={life:0s,crit:1b}] {Tags:["meteorarrow"]}
execute as @e[type=arrow,tag=meteorarrow] at @s run function dumb:meteor/gravityarrow

scoreboard players set @a dumbshot_bow 0