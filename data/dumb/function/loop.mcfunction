## Detects clicking with a carrot on a stick
execute as @a[scores={used_carrot=1..}] at @s run function dumb:carrotselect
execute as @a[scores={dumbshot_bow=1..}] at @s run function dumb:bowselect
execute as @a[scores={iscrouched=1..}] at @s run function dumb:sneakselect

# Handles most weapon cooldowns
scoreboard players remove @a[scores={genericcooldown=1..}] genericcooldown 1
execute at @a[scores={genericcooldown=1}] run function dumb:recharge/weaponready
# Handles Reverb cooldowns
scoreboard players remove @a[scores={reverbshriekcooldown=1..}] reverbshriekcooldown 1
scoreboard players remove @a[scores={reverbdashcooldown=1..}] reverbdashcooldown 1

# Handles charm cooldowns
scoreboard players remove @a[scores={charmcooldown=1..}] charmcooldown 1
execute at @a[scores={charmcooldown=1}] run function dumb:recharge/weaponready
execute as @a[nbt={Inventory:[{Slot:17b,id:"minecraft:diamond_horse_armor"}]}] run function dumb:charms/display

# Lowers gun delay
scoreboard players remove @a[scores={gundelay=1..}] gundelay 1