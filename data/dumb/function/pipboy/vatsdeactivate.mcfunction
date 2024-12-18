data merge entity @e[type=slime,limit=1,sort=nearest,tag=coin] {NoAI:0b}
execute as @e[tag=vatsfrozen] run function dumb:pipboy/vatsunfreeze
scoreboard players set @a vatsactive 0

execute at @a run playsound minecraft:custom.vatsdeactivate master @a ~ ~ ~ 0.6 1