## Call this on entities which launch the raycast

scoreboard players set @s turretdelay 1
scoreboard players add @s turretbarrel 1

# Tag prevents current caster from being detected
tag @s add raycasting

# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute anchored eyes positioned ^-0.35 ^0.2 ^ facing entity @e[distance=..8,sort=nearest,type=!#slimelib:nottargetable,team=!Ikoss,limit=1] eyes run function dumb:autoturret/raycast
execute anchored eyes positioned ^-0.35 ^0.2 ^0.2 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:custom.turret player @a ~ ~ ~ 0.3 1

# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @s remove raycasting
scoreboard players reset .distance tf_rc
