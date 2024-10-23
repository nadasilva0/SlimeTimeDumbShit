scoreboard players set @s genericcooldown 100
tag @s add spinner
execute at @a[tag=spinner] run playsound minecraft:custom.spinattack master @a ~ ~ ~ 2 1
scoreboard players set @a[tag=spinner] timespun 8
function dumb:seismspin/spin