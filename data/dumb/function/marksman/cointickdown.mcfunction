scoreboard players remove .coin projdist 1
execute if score .coin projdist matches 1.. run schedule function dumb:marksman/cointickdown 1t
execute if score .coin projdist matches 0 run kill @e[type=slime,tag=coin]