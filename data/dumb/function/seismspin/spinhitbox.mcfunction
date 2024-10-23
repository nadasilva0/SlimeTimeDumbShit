execute as @e[distance=..5,tag=!spinner] at @s run damage @s 14 minecraft:player_attack by @a[tag=spinner,limit=1,sort=nearest]

particle minecraft:sweep_attack ~ ~1.5 ~ 0 0 0 0 1 force
scoreboard players remove @s[scores={timespun=1..}] timespun 1
execute if score @s timespun matches 1.. run schedule function dumb:seismspin/spin 1t
execute if score @s timespun matches 0 run tag @e[tag=spinner] remove spinner