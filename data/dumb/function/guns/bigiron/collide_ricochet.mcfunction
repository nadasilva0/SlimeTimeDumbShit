## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

damage @s 4 minecraft:arrow by @a[tag=raycasting,limit=1,sort=nearest]
scoreboard players set @s hp_dmg 2
particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.1 0.4 0.1 1 30 force
effect give @p[tag=raycasting,distance=1..2] minecraft:instant_health 1 0 true

#### Max out range to end the raycast
scoreboard players set .distance tf_rc 1000

