scoreboard players set @s genericcooldown 40 
playsound minecraft:custom.sculk_counter_use master @a ~ ~ ~ 1 1
tag @s add counterslip
effect give @s minecraft:resistance 1 6 true
effect give @s minecraft:glowing 1 6 true
effect give @s minecraft:slowness 1 6 true
effect give @s minecraft:mining_fatigue 1 99 true
effect give @s minecraft:weakness 1 99 true

particle minecraft:angry_villager ~ ~1.5 ~ 0 0 0 1 1 force
particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force

schedule function dumb:crossfade3/counter_disable 8t