## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

damage @s 13 minecraft:player_attack by @a[tag=has_ragescythe,limit=1,sort=nearest]
execute at @s run particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.01 0.01 0.01 2 5 force



#### Max out range to end the raycast
###scoreboard players set .distance tf_rc 1000

