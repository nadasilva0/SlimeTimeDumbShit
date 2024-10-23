## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

damage @s 12 minecraft:dragon_breath by @a[tag=raycasting,limit=1,sort=nearest]
effect give @s minecraft:glowing infinite 255 true


#### Max out range to end the raycast
scoreboard players set .distance tf_rc 1000

