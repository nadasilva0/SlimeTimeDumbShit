tag @s remove flurry
execute positioned ^ ^ ^3.5 run function dumb:reverb/endflurryhitbox
item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='{"bold":true,"color":"#052A32","italic":true,"text":"Reverb"}',unbreakable={},custom_data={reverb:1b},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:12,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"attack_speed",amount:-3.4,operation:"add_value",slot:"mainhand"}]] 1
playsound entity.warden.nearby_closest master @a ~ ~ ~ 1 1