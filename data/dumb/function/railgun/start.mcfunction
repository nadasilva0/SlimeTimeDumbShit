tag @s add charge

playsound minecraft:custom.railgun_pip player @a ~ ~ ~ 2 1

effect give @s slowness 6 4 true
scoreboard players set @s genericcooldown 1240
schedule function dumb:railgun/chargeschedule2 20t
item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='{"color":"#00D5FF","italic":false,"text":"Railgun (Charging.)"}'] 1