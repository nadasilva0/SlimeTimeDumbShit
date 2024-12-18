item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name='{"bold":true,"color":"#D01455","italic":true,"text":"Scythe of Rage"}',lore=['{"color":"#6B0A2C","text":"Three."}'],unbreakable={},custom_data={ragescythe:3b},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:-1.3,operation:"add_value",slot:"mainhand"},{id:"attack_damage",type:"attack_damage",amount:13,operation:"add_value",slot:"mainhand"},{id:"movement_speed",type:"movement_speed",amount:1.3,operation:"add_multiplied_base",slot:"mainhand"}]] 1
scoreboard players set @s melRage 500
scoreboard players set @s gundelay 30
tag @s add mel_limit_break

tag @e[tag=hitbyscythe] remove hitbyscythe
tag @e[tag=mel_lb_target] remove mel_lb_target

particle minecraft:explosion_emitter ~ ~1 ~ 1 1 1 1 5 force
playsound minecraft:entity.explode player @a ~ ~1 ~
playsound minecraft:entity.wither.spawn player @a ~ ~1 ~
execute as @e[distance=..5,tag=!has_ragescythe] at @s run damage @s 20 minecraft:player_attack by @a[tag=has_ragescythe,limit=1,sort=nearest]

effect give @e[distance=..100,type=!#slimelib:not_targetable,tag=!mel_limit_break] minecraft:slowness 10 2 true
effect give @s minecraft:instant_health 1 1 true

function dumb:ragescythe/tickdown