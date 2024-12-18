execute as @e[distance=..5,tag=!flurry] at @s run damage @s 10 minecraft:player_attack by @a[tag=flurry,limit=1,sort=nearest]

## scoreboard players set @e[distance=..2] hp_dmg 1
playsound minecraft:entity.attack.sweep master @a ~ ~ ~ 0.5 1

particle minecraft:sweep_attack ~ ~1.5 ~ 0.5 0.5 0.5 0 1 force