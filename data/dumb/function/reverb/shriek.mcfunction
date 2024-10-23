tag @s add shriek
item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='{"bold":true,"color":"#29DFEB","italic":true,"text":"Reverb!"}',unbreakable={},custom_data={reverb:1b},attribute_modifiers=[{id:"generic.attack_damage",type:"generic.attack_damage",amount:12,operation:"add_value",slot:"mainhand"},{id:"generic.attack_speed",type:"generic.attack_speed",amount:-3.4,operation:"add_value",slot:"mainhand"}]] 1
effect give @s minecraft:slowness 2 3 true
playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 1 1
schedule function dumb:reverb/shriekschedule 34t
scoreboard players set @s reverbshriekcooldown 200