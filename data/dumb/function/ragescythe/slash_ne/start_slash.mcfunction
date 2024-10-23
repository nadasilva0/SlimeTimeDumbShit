##tag @s add slash_raycasting
playsound minecraft:custom.rageslash_1 master @a ~ ~ ~ 1 1

tellraw @a [{"text":"<","color":"white"},{"text":"[Fruit Basket] ","color":"#375446","bold":true},{"text":"VitisViniferaaa","color":"green"},{"text":"> ","color":"white"},{"text":"One.","color":"white"}]
summon marker ~ ~ ~ {Tags:["slash_ne"]}
tp @e[type=marker,distance=..1,tag=slash_ne] @s
tp @e[type=marker,distance=..1,tag=slash_ne] ~ ~ ~ ~ 0
scoreboard players set @e[tag=slash_ne,limit=1,sort=nearest] loopCount 3

function dumb:ragescythe/slash_ne/slash_rotate_schedule