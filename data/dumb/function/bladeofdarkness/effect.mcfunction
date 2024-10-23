##playsound minecraft:custom.erupt master @a ~ ~ ~ 0.5 1
tag @e[distance=..2,type=!#slimelib:nottargetable,limit=1,tag=!darkcaster] add hitbydarkness
execute as @e[distance=..2,type=!#slimelib:nottargetable,limit=1,tag=!darkcaster] at @s run damage @s 4 minecraft:out_of_world
effect give @e[distance=..2,tag=!darkcaster] minecraft:blindness 2 0 true
effect give @e[distance=..2,tag=!darkcaster] minecraft:nausea 8 0 true

#execute as @s at @s if entity @e[type=!#slimelib:nottargetable,distance=..2,tag=!darkcaster] run function dumb:bladeofdarkness/end

particle dust{color:[0.400,0.000,0.800],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 5 4 force
particle dust{color:[0.400,0.000,1.000],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 5 4 force
particle dust{color:[0.400,0.000,0.400],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 5 4 force
particle dust{color:[0.200,0.200,0.800],scale:1} ~ ~ ~ 0.1 0.1 0.1 5 4 force
particle minecraft:soul ~ ~ ~ 0 0.1 0 0.07 3 force

playsound minecraft:custom.lightdrone player @a ~ ~ ~ 0.1 0

#tp @s ~ ~-1 ~ facing entity @p[distance=..8,tag=!darkcaster]
#tp @s ~ ~-1 ~ facing entity @e[distance=..8,tag=!darkcaster,tag=!hitbydarkness,sort=nearest,limit=1,type=!#slimelib:nottargetable]

execute if score .darkball projdist matches 1.. run schedule function dumb:bladeofdarkness/aimerschedule 1t

execute rotated as @s positioned ^ ^ ^1 rotated as @e[type=interaction,tag=dark_aimer,limit=1] positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
tp @s ^ ^ ^0.8
tp @e[type=interaction,tag=dark_aimer,limit=1] ~ ~ ~

scoreboard players remove .darkball projdist 1
execute if score .darkball projdist matches 1.. run schedule function dumb:bladeofdarkness/effectschedule 1t
execute if score .darkball projdist matches 0 run function dumb:bladeofdarkness/end