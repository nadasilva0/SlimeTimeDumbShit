scoreboard players add @s[tag=!fishkill] fishslaps 1
tellraw @a[tag=!fishkill] ["","\uE000 ",{"text":"x","bold":true,"color":"white"},{"score":{"name":"@s","objective":"fishslaps"},"bold":true,"color":"white"}]

playsound minecraft:custom.slap player @a ~ ~ ~ 1 1
advancement revoke @s only dumb:fishhitach