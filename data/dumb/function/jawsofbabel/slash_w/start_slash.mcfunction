###tag @s add slash_raycasting
playsound minecraft:custom.gigant_slash_2 master @a ~ ~ ~
#say Slash 2
scoreboard players set @s gundelay 10
schedule function dumb:jawsofbabel/reset_attack_state 13t

summon marker ~ ~ ~ {Tags:["slash_particle_w"]}
tp @e[type=marker,distance=..1,tag=slash_particle_w] @s
tp @e[type=marker,distance=..1,tag=slash_particle_w] ~ ~ ~ ~ 0
scoreboard players set @e[tag=slash_particle_w,limit=1,sort=nearest] loopCount 3

function dumb:jawsofbabel/slash_w/slash_rotate_schedule