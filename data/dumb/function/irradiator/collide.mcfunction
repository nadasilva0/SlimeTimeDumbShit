## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

damage @s 1 minecraft:indirect_magic by @a[tag=raycasting,limit=1,sort=nearest]
effect give @s minecraft:poison 2 1




#### Max out range to end the raycast
scoreboard players set .distance tf_rc 400

