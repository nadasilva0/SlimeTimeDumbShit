kill @e[type=armor_stand,tag=longinus]
clear @s minecraft:carrot_on_a_stick[custom_data={longinus:1b}] 1

tag @s add longcaster
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["longinus"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":'{"text":"Longinus Projectile"}'}}]}
tp @e[type=armor_stand,tag=longinus] @s
tp @e[type=armor_stand,tag=longinus] ~ ~2 ~

playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 1
scoreboard players set @e[tag=longinus] projdist 600
execute as @e[type=armor_stand,tag=longinus] at @s run function dumb:longinus/effectschedule