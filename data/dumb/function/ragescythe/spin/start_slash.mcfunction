##tag @s add slash_raycasting
playsound minecraft:custom.gigant_slash_4 master @a ~ ~ ~
#effect give @s minecraft:slowness 1 6 true
scoreboard players set @s gundelay 30

summon marker ~ ~ ~ {Tags:["slash_spin"]}
tp @e[type=marker,distance=..1,tag=slash_spin] @s
tp @e[type=marker,distance=..1,tag=slash_spin] ~ ~ ~ ~ 0
scoreboard players set @e[tag=slash_spin,limit=1,sort=nearest] loopCount 6

function dumb:ragescythe/spin/slash_rotate_schedule