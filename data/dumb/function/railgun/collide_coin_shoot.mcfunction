execute as @a at @s run playsound minecraft:custom.ricoshot player @s ~ ~ ~ 10 1
execute as @n[tag=railcoin] at @s facing entity @n[tag=!railcoincaster,tag=!coin,type=!#slimelib:not_mob,distance=..30,limit=1] feet if block ~ ~ ~ #slimelib:raycast_pass run function dumb:railgun/start_raycast_coin
execute as @e[tag=hitpaused] run function dumb:railgun/unhitpause
tag @a remove railcoincaster
#say collide_coin_shoot