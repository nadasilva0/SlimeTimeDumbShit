scoreboard players set @s philbertcooldown 1800
scoreboard players set @s abilitytype 0
item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='{"bold":true,"color":"gray","italic":true,"text":"Philbert (Sunless)"}',lore=['{"bold":true,"color":"#3DA664","text":"Juniper\'s beloved staff"}'],unbreakable={show_in_tooltip:false},custom_data={philbert:2b},enchantments={levels:{"minecraft:fire_aspect":2,"minecraft:knockback":4,"minecraft:sharpness":5},show_in_tooltip:false},enchantment_glint_override=false] 1
tag @s add philcaster

## Summons projectile and moves it at player
summon interaction ~ ~ ~ {Tags:["lightball","philball"]}
summon interaction ~ ~ ~ {Tags:["phil_aimer","philball"]}
tp @e[type=interaction,tag=philball] @s
tp @e[type=interaction,tag=philball] ~ ~2 ~


playsound minecraft:custom.lightballcast master @a ~ ~ ~ 1 1
scoreboard players set .philbert projdist 250

execute as @e[type=interaction,tag=lightball] at @s run function dumb:philbert/effectschedule
execute as @a[tag=philcaster] at @s run function dumb:philbert/cooldown