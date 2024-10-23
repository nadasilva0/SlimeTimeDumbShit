playsound minecraft:custom.zakspell master @a ~ ~ ~ 1 0

clear @s minecraft:carrot_on_a_stick[custom_data={soulstealer:1b}] 1

title @a title ["",{"text":"Darkness ","color":"#0003AB"},{"text":"Sign:","color":"#0003AB"}]
title @a subtitle ["",{"text":"Essence ","color":"#E990FF"},{"text":"Disruptor","color":"#AD54FF"}]

tag @a[distance=1..20] add disrupted
scoreboard players set .timer disrupted 12000
function dumb:soulstealer/disrupted