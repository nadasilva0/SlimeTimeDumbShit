# literally the only difference between this and start_slash_3 is the sound effect
playsound minecraft:custom.rageslash_3 master @a ~ ~ ~ 1 1
#say Slash 1
scoreboard players set @s gundelay 10
schedule function dumb:ragescythe/reset_attack_state 13t

tellraw @a [{"text":"<","color":"white"},{"text":"[Fruit Basket] ","color":"#375446","bold":true},{"text":"VitisViniferaaa","color":"green"},{"text":"> ","color":"white"},{"text":"THREE.","color":"#d01455","bold":true,"italic":true}]

summon marker ~ ~ ~ {Tags:["slash_e"]}
tp @e[type=marker,distance=..1,tag=slash_e] @s
tp @e[type=marker,distance=..1,tag=slash_e] ~ ~ ~ ~ 0
scoreboard players set @e[tag=slash_e,limit=1,sort=nearest] loopCount 3

function dumb:ragescythe/slash_e/slash_rotate_schedule