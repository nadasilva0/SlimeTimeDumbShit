execute as @e[distance=..5,tag=!spinner] at @s run damage @s 30 minecraft:player_attack by @a[tag=spinner,limit=1,sort=nearest]
effect give @a[distance=..2,team=!sculk] minecraft:darkness 2 0 true

particle minecraft:sweep_attack ~ ~1.5 ~ 1 1 1 0 2 force
particle minecraft:sonic_boom ~ ~1.5 ~ 1 1 1 0 1 force
particle minecraft:sculk_soul ~ ~1.5 ~ 1 1 1 0 2 force

scoreboard players remove @s[scores={timespun=1..}] timespun 1
execute if score @s timespun matches 1.. run schedule function dumb:crossfade3/spin 1t
execute if score @s timespun matches 0 run tag @a[tag=spinner] remove spinner