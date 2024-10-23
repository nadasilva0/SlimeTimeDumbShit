## Call this on entities which launch the raycast

# Tag prevents current caster from being detected
tag @s add raycasting

scoreboard players add @s mhswingtype 1
execute as @a[scores={mhswingtype=6..}] at @s run scoreboard players set @s mhswingtype 1

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)

execute if score @s mhswingtype matches 1..3 run execute anchored eyes positioned ^-0.5 ^1 ^ run function dumb:meteorhammer/spin_raycast
execute if score @s mhswingtype matches 4 run execute rotated ~ ~180 anchored eyes positioned ^-0.5 ^0.4 ^ run function dumb:meteorhammer/throw_raycast
execute if score @s mhswingtype matches 5 run execute anchored eyes positioned ^-0.5 ^-0.4 ^ run function dumb:meteorhammer/throw_raycast


playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.3 1

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
