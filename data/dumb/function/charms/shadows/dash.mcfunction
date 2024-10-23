scoreboard players set @s charmcooldown 480
effect give @s minecraft:speed 3 2 true
execute as @e[distance=1..7] run effect give @s minecraft:blindness 6 0 false
particle minecraft:squid_ink ~ ~ ~ 2 2 2 0.005 1200 force
playsound minecraft:entity.squid.squirt master @a ~ ~ ~ 1 1