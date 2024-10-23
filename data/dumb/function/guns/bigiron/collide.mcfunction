## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run scoreboard players set @s hp_dmg 1
damage @s 1 minecraft:generic

scoreboard players set @s hp_dmg 1

execute if score @s vatsactive matches 1 run function dumb:guns/bigiron/collide2




#### Max out range to end the raycast
scoreboard players set .distance tf_rc 1000

