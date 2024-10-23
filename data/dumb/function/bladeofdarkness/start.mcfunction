scoreboard players set @s genericcooldown 130
tag @s add darkcaster

## Creates projectile and positions it at the player
summon interaction ~ ~ ~ {Tags:["darkball","bod_proj"]}
summon interaction ~ ~ ~ {Tags:["dark_aimer","bod_proj"]}
tp @e[type=interaction,tag=bod_proj] @s
tp @e[type=interaction,tag=bod_proj] ~ ~2 ~

playsound minecraft:custom.lightballcast master @a ~ ~ ~ 1 0
scoreboard players set .darkball projdist 120
execute as @e[tag=darkball] at @s run function dumb:bladeofdarkness/effectschedule