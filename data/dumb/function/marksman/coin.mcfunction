## Sets cooldowns
scoreboard players set @s genericcooldown 30
scoreboard players set @s gundelay 0
tag @s add marksman

## Summons reference armor stand and slime. Slime starts with 1.0 motion in its Y value.
execute at @s[tag=marksman] rotated as @s positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["aim"]}
execute at @s[tag=marksman] run summon minecraft:slime ~ ~1.5 ~ {CustomNameVisible:0b,CustomName:'{"text":"coin"}',DeathLootTable:"na",Motion:[0.0,1.0,0.0],Tags:["coin"]}

## Stores vector between player and reference armor stand
execute at @s[tag=marksman] positioned ~ ~1.5 ~ as @e[type=slime,distance=..1,tag=coin] positioned 0 0 0 store result score @s MotionX run data get entity @e[tag=aim,limit=1] Pos[0] 1000
#execute as @e[type=slime,distance=..1,tag=coin] positioned 0 0 0 store result score @s MotionY run data get entity @e[tag=aim,limit=1] Pos[1] 1000
execute at @s[tag=marksman] positioned ~ ~1.5 ~ as @e[type=slime,distance=..1,tag=coin] positioned 0 0 0 store result score @s MotionZ run data get entity @e[tag=aim,limit=1] Pos[2] 1000

## Removes reference armor stand and clears the marksman tag from all players
kill @e[tag=aim]
tag @a remove marksman

## Assigns stored motion values to slime
execute as @e[tag=coin] store result entity @s Motion[0] double 0.001 run scoreboard players get @s MotionX
#execute as @e[tag=coin] store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute as @e[tag=coin] store result entity @s Motion[2] double 0.001 run scoreboard players get @s MotionZ

## Plays sound
playsound minecraft:custom.coinflip master @a ~ ~ ~ 1 1

## Does weapon cooldown stuff
scoreboard players set .coin projdist 30
function dumb:marksman/cointickdown