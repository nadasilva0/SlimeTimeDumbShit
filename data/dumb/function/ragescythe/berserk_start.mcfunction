item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name='{"bold":true,"color":"#D01455","italic":true,"text":"Scythe of Rage"}',lore=['{"color":"#6B0A2C","text":"Three."}'],unbreakable={},custom_data={ragescythe:2b},attribute_modifiers=[{id:"generic.attack_speed",type:"generic.attack_speed",amount:-1.3,operation:"add_value",slot:"mainhand"},{id:"generic.attack_damage",type:"generic.attack_damage",amount:13,operation:"add_value",slot:"mainhand"},{id:"generic.movement_speed",type:"generic.movement_speed",amount:1.3,operation:"add_multiplied_base",slot:"mainhand"}]] 1
scoreboard players set @s gundelay 20

particle minecraft:explosion ~ ~1 ~ 1.5 1 1.5 1 5 force
execute as @e[distance=..3,tag=!has_ragescythe] at @s run damage @s 12 minecraft:player_attack by @a[tag=has_ragescythe,limit=1,sort=nearest]
playsound minecraft:entity.generic.explode player @a ~ ~1 ~

function dumb:ragescythe/tickdown