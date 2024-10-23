## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.5 0.5 0.5 1 1700 force
kill @s




#### Max out range to end the raycast
scoreboard players set .distance tf_rc 1000

