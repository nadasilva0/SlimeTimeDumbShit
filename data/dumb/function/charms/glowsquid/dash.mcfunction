scoreboard players set @s charmcooldown 480
effect give @s minecraft:speed 3 2 true
effect give @s minecraft:invisibility 6 0 true
execute as @e[distance=1..7] run effect give @s minecraft:glowing 30 0 true
particle minecraft:glow_squid_ink ~ ~ ~ 2 2 2 0.005 1200 force
playsound minecraft:entity.squid.squirt master @a ~ ~ ~ 1 1