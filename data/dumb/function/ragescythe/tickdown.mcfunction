function dumb:ragescythe/display_rage
particle minecraft:crimson_spore ~ ~ ~ 0 0 0 1 3 force

#playsound minecraft:custom.lightdrone player @a ~ ~ ~ 0.1 1

scoreboard players remove @s[scores={melRage=1..}] melRage 1
execute if score @s melRage matches 1.. run schedule function dumb:ragescythe/tickdown_schedule 1t
execute if score @s melRage matches ..0 run function dumb:ragescythe/end