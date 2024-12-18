#title @a title {"text":"LIMIT BREAK","color":"#FC88B5"}
item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name='{"bold":true,"color":"#D01455","italic":true,"text":"Scythe of Rage"}',lore=['{"color":"#6B0A2C","text":"Three."}'],unbreakable={},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:-1.3,operation:"add_value",slot:"mainhand"},{id:"attack_damage",type:"attack_damage",amount:13,operation:"add_value",slot:"mainhand"},{id:"movement_speed",type:"movement_speed",amount:1.3,operation:"add_multiplied_base",slot:"mainhand"}]] 1
#schedule function dumb:ragescythe/limit_break/subtitle 25t

## Sets up markers for the limit break
tp @s ~ ~ ~ ~ 0
summon interaction ~ ~ ~ {Tags:["mel_tp","mel_lb"]}
tp @e[type=interaction,tag=mel_tp] @s
tp @e[type=interaction,tag=mel_tp] ~ ~1 ~

summon interaction ~ ~ ~ {Tags:["target_tp","mel_lb"]}
execute as @e[type=interaction,tag=mel_tp] run tp @e[type=interaction,tag=target_tp] @s
execute as @e[type=interaction,tag=mel_tp] at @s run tp @e[type=interaction,tag=target_tp] ^ ^ ^3 facing entity @e[type=interaction,tag=mel_tp,limit=1]

## Sets up limit break timer
scoreboard players set .timer melRage 90
scoreboard players add @s melRage 100

effect give @s minecraft:resistance 4 6 true
effect give @s minecraft:mining_fatigue 4 6 true

function dumb:ragescythe/limit_break/holdplayers
schedule function dumb:ragescythe/limit_break/slash1_schedule 17t
schedule function dumb:ragescythe/limit_break/slash2_schedule 30t
schedule function dumb:ragescythe/limit_break/slash3_buildup 42t
schedule function dumb:ragescythe/limit_break/slash3_schedule 68t