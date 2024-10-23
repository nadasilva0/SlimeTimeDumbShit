tag @s remove meteorprimed

##particle dust 1 0 1 2 ~ ~0.75 ~ 6 6 6 1 600 force
##particle dust 0.47 0 1 1 ~ ~0.75 ~ 6 6 6 1 2400 force
particle flash ~ ~0.75 ~ 0 0 0 0 2 force
##function dumb:charms/meteor/constellation
function dumb:charms/meteor/sigilexplode
function dumb:charms/meteor/sigilexplode2
function dumb:charms/meteor/sigilexplode3

execute as @e[distance=1..10] run function dumb:charms/meteor/effect
execute at @e[distance=1..10] run function dumb:charms/meteor/particleeffect
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0