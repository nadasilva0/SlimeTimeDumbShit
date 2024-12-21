scoreboard players set @s charmcooldown 1200
playsound minecraft:custom.vatsactive master @a ~ ~ ~ 2 1

data merge entity @e[type=slime,limit=1,sort=nearest,tag=coin] {NoAI:1b}
scoreboard players add .coin projdist 100

execute as @e[distance=..30] run function dumb:pipboy/vatsfreeze

schedule function dumb:pipboy/vatsdeactivate 5s