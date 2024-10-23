playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 0.6 2
particle dust{color:[0.972,0.137,0.188],scale:1.5} ~ ~1 ~ 0.4 0.4 0.4 5 4 force
particle dust{color:[0.988,0.329,0.168],scale:1.5} ~ ~1 ~ 0.4 0.4 0.4 5 4 force
particle dust{color:[1.000,0.568,0.360],scale:1.5} ~ ~1 ~ 0.4 0.4 0.4 5 4 force
particle dust{color:[1.000,0.749,0.458],scale:1.5} ~ ~1 ~ 0.4 0.4 0.4 5 4 force

tag @s remove philcaster

item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name='{"text":"Philbert","color":"#18573A","bold":true,"italic":true}',lore=['{"text":"Juniper\'s beloved staff","color":"#3DA664","bold":true}'],unbreakable={show_in_tooltip:false},custom_data={philbert:1b},enchantments={levels:{"minecraft:fire_aspect":2,"minecraft:knockback":4,"minecraft:sharpness":5},show_in_tooltip:false},enchantment_glint_override=false] 1