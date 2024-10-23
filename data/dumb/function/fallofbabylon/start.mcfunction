playsound minecraft:custom.choospell master @a ~ ~ ~ 1 1

scoreboard players set @s abilitytype 0
scoreboard players set @s lightnumber 4
clear @s minecraft:carrot_on_a_stick[custom_data={babylfall:1b}] 1

title @a title ["",{"text":"Elder","obfuscated":true,"color":"#630D0D"},{"text":" Sign","color":"#B01313"}]
title @a subtitle {"text":"Fall of Babylon","color":"#B01313"}

tp @s ~ ~38 ~

tag @s add catalyst
schedule function dumb:fallofbabylon/startboltschedule 45t
function dumb:fallofbabylon/cross