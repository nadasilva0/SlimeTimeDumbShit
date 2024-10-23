execute as @e[distance=..5,tag=!spinner] at @s run damage @s 17 minecraft:player_attack by @a[tag=spinner,limit=1,sort=nearest]
#effect give @e[distance=..2] minecraft:blindness 1 0 true

particle minecraft:sweep_attack ~ ~1.5 ~ 1 1 1 0 2 force
particle minecraft:sonic_boom ~ ~1.5 ~ 1 1 1 0 1 force
particle minecraft:sculk_soul ~ ~1.5 ~ 1 1 1 0 2 force

scoreboard players remove @s[scores={timespun=1..}] timespun 1
execute if score @s timespun matches 1.. run schedule function dumb:crossfade/spin 1t
execute if score @s timespun matches 0 run tag @a[tag=spinner] remove spinner