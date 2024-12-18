effect clear @a[tag=darkarts] speed
effect clear @a[tag=darkarts] resistance
effect clear @a[tag=darkarts] invisibility

item replace entity @a[tag=darkarts] armor.head with carved_pumpkin[custom_name='{"bold":true,"color":"#052A32","italic":true,"text":"Sculk Champion\'s Mask"}',unbreakable={},attribute_modifiers=[{id:"movement_speed",type:"movement_speed",amount:0.4,operation:"add_multiplied_base",slot:"head"},{id:"knockback_resistance",type:"knockback_resistance",amount:0.4,operation:"add_value",slot:"head"},{id:"armor",type:"armor",amount:11,operation:"add_value",slot:"head"}]] 1
item replace entity @a[tag=darkarts] armor.chest with elytra[custom_name='{"bold":true,"color":"aqua","italic":true,"text":"Sculken Wings"}',unbreakable={},enchantments={levels:{"minecraft:protection":4}}] 1
item replace entity @s armor.legs with netherite_leggings[custom_name='{"text":"Invis Leggings"}',unbreakable={},enchantments={levels:{"minecraft:protection":4}}] 1
item replace entity @s armor.feet with netherite_boots[custom_name='{"text":"Invis Boots"}',unbreakable={},enchantments={levels:{"minecraft:protection":4}}] 1
item replace entity @a[tag=darkarts] weapon.mainhand with carrot_on_a_stick[custom_name='{"bold":true,"color":"#1AD6FF","italic":true,"text":"Crossfade"}',unbreakable={},custom_data={crossfade:3b},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:7,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"attack_speed",amount:-1.7,operation:"add_value",slot:"mainhand"}]] 1

execute as @e[tag=darkarts_target] at @s run damage @s 4 minecraft:indirect_magic
execute as @e[tag=darkarts_target] at @s run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force

tag @a[tag=darkarts] remove darkarts
tag @e[tag=darkarts_target] remove darkarts_target