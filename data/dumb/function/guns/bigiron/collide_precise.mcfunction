## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

damage @s 7 minecraft:generic

execute if score @s vatsactive matches 1 run function dumb:guns/bigiron/collide2




#### Max out range to end the raycast
scoreboard players set .distance tf_rc 1000

