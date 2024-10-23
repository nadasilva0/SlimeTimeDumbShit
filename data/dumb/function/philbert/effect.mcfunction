scoreboard players remove .philbert projdist 1
##playsound minecraft:custom.erupt master @a ~ ~ ~ 0.5 1
execute as @e[distance=..3,type=!#slimelib:nottargetable,tag=!philcaster] at @s run damage @s 5 minecraft:magic

particle dust{color:[0.972,0.137,0.188],scale:4} ~ ~ ~ 0.7 0.7 0.7 0 3 normal
particle dust{color:[0.988,0.329,0.168],scale:4} ~ ~ ~ 0.7 0.7 0.7 0 3 normal
particle dust{color:[1.000,0.568,0.360],scale:4} ~ ~ ~ 0.7 0.7 0.7 0 3 normal
particle dust{color:[1.000,0.749,0.458],scale:4} ~ ~ ~ 0.7 0.7 0.7 0 3 normal

playsound minecraft:custom.lightdrone player @a ~ ~ ~ 0.1 1


execute if score .philbert projdist matches 1.. run schedule function dumb:philbert/aimerschedule 1t

#tp @s ~ ~-1 ~ facing entity @p[distance=..16,tag=!philcaster]
#tp @s ~ ~-1 ~ facing entity @e[distance=..16,tag=!philcaster,sort=nearest,limit=1,type=!#slimelib:nottargetable]
execute rotated as @s positioned ^ ^ ^6 rotated as @e[type=interaction,tag=phil_aimer,limit=1] positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
tp @s ^ ^ ^0.28
tp @e[type=interaction,tag=phil_aimer,limit=1] ~ ~ ~

execute if score .philbert projdist matches 1.. run schedule function dumb:philbert/effectschedule 1t
execute if score .philbert projdist matches 0 run function dumb:philbert/end