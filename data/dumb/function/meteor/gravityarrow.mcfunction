data merge entity @s {NoGravity:1,PierceLevel:17b}
scoreboard players add @s arrowLife 1
execute as @s[scores={arrowLife=200}] at @s run kill @s
particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0.01 5