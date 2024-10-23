#say YOU FOOL. LMAO.
tag @s add spinner
particle minecraft:sculk_soul ~ ~0.5 ~ 0.2 0.5 0.2 0 25 force
playsound minecraft:block.sculk_sensor.clicking player @a ~ ~ ~
effect give @p[tag=!spinner,gamemode=!spectator] minecraft:darkness 2 0 true
effect give @p[tag=!spinner,gamemode=!spectator] minecraft:slowness 1 3 true
execute at @s rotated ~ 0 at @p[tag=!spinner,gamemode=!spectator] run tp @s ^ ^ ^-4 facing ^ ^ ^
function dumb:crossfade3/counter_disable


schedule function dumb:crossfade3/spin_schedule 10t