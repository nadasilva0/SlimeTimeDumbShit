##tag @s add slash_raycasting
playsound minecraft:custom.rageslash_2 master @a ~ ~ ~ 1 1

tellraw @a [{"text":"<","color":"white"},{"text":"[Fruit Basket] ","color":"#375446","bold":true},{"text":"VitisViniferaaa","color":"green"},{"text":"> ","color":"white"},{"text":"Two.","color":"#FC88B5","italic":true}]
summon marker ~ ~ ~ {Tags:["slash_nw"]}
tp @e[type=marker,distance=..1,tag=slash_nw] @s
tp @e[type=marker,distance=..1,tag=slash_nw] ~ ~ ~ ~-120 0
scoreboard players set @e[tag=slash_nw,limit=1,sort=nearest] loopCount 3

function dumb:ragescythe/slash_nw/slash_rotate_schedule