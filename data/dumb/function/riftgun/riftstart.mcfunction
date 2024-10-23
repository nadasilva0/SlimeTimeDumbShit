item replace entity @s hotbar.5 with carrot_on_a_stick[custom_name='{"bold":true,"color":"gray","italic":true,"text":"Ikoss Labs Rift Gun Mk VII (Recharging)"}',unbreakable={}] 1
scoreboard players set @s riftcooldown 1012
scoreboard players set @s timerifted 999
tag @s add rifted
tag @s add used_riftgun
playsound minecraft:custom.riftuse player @a ~ ~ ~ 1 1
schedule function dumb:riftgun/rifttpschedule 12t
execute as @a[tag=used_riftgun] at @s run function dumb:riftgun/cooldown