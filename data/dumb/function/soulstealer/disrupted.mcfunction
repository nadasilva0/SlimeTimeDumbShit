effect give @a[tag=disrupted] weakness 3 1 true
effect give @a[tag=disrupted] slowness 3 2 true
effect give @a[tag=disrupted] hunger 3 2 true

execute as @a[name=!VitisViniferaaa,tag=disrupted] at @s run particle minecraft:soul ~ ~1 ~0.1 0.01 0.01 0.01 0.05 1 force
execute as @a[name=VitisViniferaaa,tag=disrupted] at @s run particle minecraft:soul ~ ~1.8 ~ 0.01 0.01 0.01 0.05 1 force

scoreboard players remove .timer disrupted 1
execute if score .timer disrupted matches 1.. run schedule function dumb:soulstealer/disrupted 1t
execute if score .timer disrupted matches 0 run tag @a remove disrupted