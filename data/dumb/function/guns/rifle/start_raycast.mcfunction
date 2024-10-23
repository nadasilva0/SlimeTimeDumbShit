## Call this on entities which launch the raycast

scoreboard players set @s[scores={rifleshots=0}] rifleshots 3
scoreboard players remove @s[scores={rifleammo=1..}] rifleammo 1
scoreboard players remove @s[scores={rifleshots=1..}] rifleshots 1
tp @s ~ ~ ~ ~ ~-2
scoreboard players set @s gundelay 12

# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^ ^ ^ run function dumb:guns/rifle/raycast
playsound minecraft:custom.turret player @a ~ ~ ~ 2 1

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc

execute if score @s rifleshots matches 1.. run schedule function dumb:guns/rifle/start_raycast_schedule 2t