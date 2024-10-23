scoreboard players set @s charmcooldown 1000
playsound minecraft:custom.vatsactive master @a ~ ~ ~ 2 1

effect give @a minecraft:glowing 10 0 true
scoreboard players set @a vatsactive 1

schedule function dumb:pipboy/vatsdeactivate 10s