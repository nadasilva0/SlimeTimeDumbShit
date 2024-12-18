## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

damage @s 16 minecraft:arrow by @a[tag=raycasting,limit=1,sort=nearest]
particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.1 0.4 0.1 2 60 force
effect give @p[tag=raycasting,distance=1..2] minecraft:instant_health 1 1 true

#### Max out range to end the raycast
scoreboard players set .distance tf_rc 1000

