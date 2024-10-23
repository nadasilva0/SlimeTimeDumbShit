playsound minecraft:custom.deep_freeze master @a

scoreboard players set @s genericcooldown 45
function dumb:icemagic/freezedamage

effect give @s minecraft:slowness 1 6 true

##summon minecraft:marker ~ ~ ~ {Tags:['burntarget']}
##execute as @e[type=minecraft:marker,tag=burntarget] at @s rotated as @a[distance=..1,limit=1,sort=nearest] run teleport @s ~ ~ ~ ~ 0

tag @s add freezing
scoreboard players set @s loopCount 20
function dumb:icemagic/df_loop_schedule