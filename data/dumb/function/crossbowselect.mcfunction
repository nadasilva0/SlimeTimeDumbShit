# Turns arrows from the Meteor Crossbow into lasers
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{meteorcrossbow:1b}}}}] run execute at @s run function dumb:meteor/crossbow/start_raycast

advancement revoke @s only dumb:shoot_crossbow