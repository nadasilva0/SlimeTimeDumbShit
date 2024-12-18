tag @s add shriekparticle
item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='{"bold":true,"color":"#29DFEB","italic":true,"text":"Reverb!"}',unbreakable={},custom_data={reverb:1b},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:12,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"attack_speed",amount:-3.4,operation:"add_value",slot:"mainhand"}]] 1
effect give @s minecraft:slowness 2 3 true
effect give @a[distance=1..20] minecraft:darkness 3 0 true
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 1 1
scoreboard players set @s shriekloop 9
function dumb:reverb/shriekparticle

schedule function dumb:reverb/dashschedule 40t