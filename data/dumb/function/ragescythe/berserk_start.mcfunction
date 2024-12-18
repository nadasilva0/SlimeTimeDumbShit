item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name='{"bold":true,"color":"#D01455","italic":true,"text":"Scythe of Rage"}',lore=['{"color":"#6B0A2C","text":"Three."}'],unbreakable={},custom_data={ragescythe:2b},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:-1.3,operation:"add_value",slot:"mainhand"},{id:"attack_damage",type:"attack_damage",amount:13,operation:"add_value",slot:"mainhand"},{id:"movement_speed",type:"movement_speed",amount:1.3,operation:"add_multiplied_base",slot:"mainhand"}]] 1
scoreboard players set @s gundelay 20

particle minecraft:explosion ~ ~1 ~ 1.5 1 1.5 1 5 force
execute as @e[distance=..3,tag=!has_ragescythe] at @s run damage @s 12 minecraft:player_attack by @a[tag=has_ragescythe,limit=1,sort=nearest]
playsound minecraft:entity.explode player @a ~ ~1 ~

function dumb:ragescythe/tickdown