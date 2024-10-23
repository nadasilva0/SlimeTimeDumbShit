scoreboard players set @s reverbshriekcooldown 80
tag @s add spinner
execute at @a[tag=spinner] run playsound minecraft:custom.spinattack master @a ~ ~ ~ 2 1
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 1 1
scoreboard players set @a[tag=spinner] timespun 16
function dumb:crossfade3/spin