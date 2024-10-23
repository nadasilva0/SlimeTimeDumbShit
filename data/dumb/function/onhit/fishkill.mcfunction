tag @a add fishkill
scoreboard players reset @s fishslaps
tellraw @a ["","\uE001 ",{"text":"FISH KILL!","color":"white"}]

playsound minecraft:custom.critslap player @a ~ ~ ~ 1 1
advancement revoke @s only dumb:fishkillach
schedule function dumb:onhit/removefish 1t