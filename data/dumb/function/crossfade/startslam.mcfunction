tag @s add slamcaster
tag @s remove slimeshriekparticle
tp @s ~ ~ ~ ~ 0

summon interaction ^ ^ ^ {Tags:["slamcreature"]}
tp @e[type=interaction,tag=slamcreature] @s

execute at @e[type=interaction,tag=slamcreature] run playsound minecraft:custom.eruptstart master @a ~ ~ ~ 2 1
execute at @e[type=interaction,tag=slamcreature] run playsound minecraft:entity.warden.tendril_clicks master @a ~ ~ ~ 2 1

scoreboard players set @e[type=interaction,tag=slamcreature] projdist 30
tag @a remove shriekparticle
tag @a remove slimeshriekparticle
function dumb:crossfade/slam