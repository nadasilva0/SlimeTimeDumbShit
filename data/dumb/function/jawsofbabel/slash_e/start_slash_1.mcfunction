# literally the only difference between this and start_slash_3 is the sound effect
playsound minecraft:custom.gigant_slash_1 master @a ~ ~ ~
#say Slash 1
scoreboard players set @s gundelay 10
schedule function dumb:jawsofbabel/reset_attack_state 13t

summon marker ~ ~ ~ {Tags:["slash_e"]}
tp @e[type=marker,distance=..1,tag=slash_e] @s
tp @e[type=marker,distance=..1,tag=slash_e] ~ ~ ~ ~ 0
scoreboard players set @e[tag=slash_e,limit=1,sort=nearest] loopCount 3

function dumb:jawsofbabel/slash_e/slash_rotate_schedule