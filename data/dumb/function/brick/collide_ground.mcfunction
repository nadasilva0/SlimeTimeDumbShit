## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

particle block{block_state:"minecraft:bricks"} ~ ~0 ~ 0.1 0.1 0.1 10 20 force
playsound minecraft:block.nether_bricks.break player @a ~ ~ ~ 1 1



#### Max out range to end the raycast
scoreboard players set .distance tf_rc 5000

