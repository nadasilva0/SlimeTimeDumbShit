scoreboard players set @s charmcooldown 1600
##scoreboard players set @s disabletick 1
##scoreboard players set @s meteordelay 20
##scoreboard players set @s meteorprimed 1
tag @s add disablejump
tag @s add meteorprimed
schedule function dumb:charms/meteor/jumpdisable 2t
schedule function dumb:charms/meteor/blastschedule 20t
function dumb:charms/meteor/sigil
effect give @s levitation 1 100 true
effect give @s slowness 1 2 true
effect give @s slow_falling 1 100 true
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 9 2