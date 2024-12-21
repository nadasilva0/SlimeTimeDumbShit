## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

damage @s 40 minecraft:arrow by @a[tag=raycasting,limit=1,sort=nearest]
tag @s add hitbytau
#say collide3

#### Max out range to end the raycast
scoreboard players remove .pierces tf_rc 1
