particle minecraft:dust_color_transition{from_color:[1.000,1.000,1.000],scale:1.5,to_color:[1.000,0.000,0.000]} ~ ~ ~ 0.1 0.1 0.1 5 7 force

## fill ~-3 ~-50 ~-3 ~3 ~50 ~3 minecraft:red_terracotta replace #dumb:babyl_convertable
## fill ~-3 ~-50 ~-3 ~3 ~50 ~3 minecraft:air replace #dumb:babyl_foliage
## fill ~-3 ~-50 ~-3 ~3 ~50 ~3 minecraft:nether_wart_block replace #minecraft:leaves

## tp @s ^ ^ ^0.5

fill ^-2 ^-20 ^40 ^2 ^37 ^40 minecraft:red_terracotta replace #dumb:babyl_convertable
fill ^-5 ^-20 ^40 ^5 ^37 ^20 minecraft:red_terracotta replace #dumb:babyl_convertable
fill ^-5 ^-20 ^40 ^5 ^37 ^ minecraft:red_terracotta replace #dumb:babyl_convertable

fill ^-2 ^-20 ^40 ^2 ^37 ^40 minecraft:nether_wart_block replace #minecraft:leaves
fill ^-2 ^-20 ^40 ^2 ^37 ^20 minecraft:nether_wart_block replace #minecraft:leaves
fill ^-2 ^-20 ^40 ^2 ^37 ^ minecraft:nether_wart_block replace #minecraft:leaves

tp @s ~ ~ ~ ~1 ~

scoreboard players remove @s[scores={projdist=1..}] projdist 1
execute if score @s projdist matches 1.. run schedule function dumb:fallofbabylon/corruptschedule 1t
execute if score @s projdist matches 0 run kill @s