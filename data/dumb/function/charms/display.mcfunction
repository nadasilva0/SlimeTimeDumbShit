execute as @s[scores={charmcooldown=1..}] run title @s actionbar ["",{"text":"[[ ","color":"gray"},{"score":{"name":"@s","objective":"charmcooldown"},"color":"gray"},{"text":" ]]","color":"gray"}]

execute as @s[scores={charmcooldown=0}] run title @s actionbar ["",{"text":"[[ ","color":"dark_green"},{"text":"Ready!","color":"green"},{"text":" ]]","color":"dark_green"}]