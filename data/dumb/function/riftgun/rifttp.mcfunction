## scoreboard players set @s timerifted 80
execute at @s positioned ~ ~1 ~ run function dumb:riftgun/riftparticle
playsound minecraft:custom.riftopen player @a ~ ~ ~ 1 1
gamemode spectator
schedule function dumb:riftgun/riftendschedule 80t
