playsound minecraft:custom.juniperspellcard master @a ~ ~ ~ 1 1

scoreboard players set @s abilitytype 0
scoreboard players set @s lightnumber 12
clear @s minecraft:carrot_on_a_stick[custom_data={rebirth:1b}] 1

title @a title ["",{"text":"Radiant ","color":"#FFE170"},{"text":"Sign:","color":"#FF7A67"}]
title @a subtitle ["",{"text":"\"R","color":"#F8FFBC"},{"text":"e","color":"#FFE170"},{"text":"b","color":"#FFC570"},{"text":"i","color":"#FF9A6C"},{"text":"r","color":"#FF7A67"},{"text":"t","color":"#FF556D"},{"text":"h\"","color":"#E94157"}]

effect give @s minecraft:levitation 1 15 true
effect give @s minecraft:absorption 120 4 true

tag @s add reborn
schedule function dumb:rebirth/startboltschedule 27t