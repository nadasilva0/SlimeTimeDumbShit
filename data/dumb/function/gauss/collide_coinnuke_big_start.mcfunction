tag @s add railcoin
execute as @e[distance=..20] run function dumb:railgun/hitpause
data merge entity @s {NoAI:1b}
scoreboard players set .coin projdist 100
particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.4 20 force
particle minecraft:flash ~ ~ ~
scoreboard players set .distance tf_rc 1000

schedule function dumb:railgun/stopsoundbcspaghetticode 1t
schedule function dumb:gauss/collide_coinnuke_big_start2ughhh 10t