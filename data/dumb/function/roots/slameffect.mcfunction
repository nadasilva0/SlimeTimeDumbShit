playsound minecraft:custom.rooterupt master @a ~ ~ ~ 0.1 1
execute as @e[distance=..2,tag=!rootslamcaster] at @s run damage @s 17 minecraft:player_attack by @a[tag=rootslamcaster,limit=1,sort=nearest]


summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["shaderoot"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:netherite_sword",Count:1b,tag:{display:{Name:'{"text":"Shaderoot"}'}}}]}
particle minecraft:smoke ~ ~ ~ 0.2 0.5 0.2 0 30 normal
tp @s ~ ~ ~ facing entity @p[distance=..2,tag=!rootslamcaster]
tp @s ^ ^ ^2
scoreboard players remove @s[scores={projdist=1..}] projdist 1
execute if score @s projdist matches 1.. run schedule function dumb:roots/slam 3t
execute if score @s projdist matches 1.. run schedule function dumb:roots/killroots 6s