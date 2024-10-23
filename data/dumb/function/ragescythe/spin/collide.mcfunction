## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

damage @s 19 minecraft:player_attack by @a[tag=has_ragescythe,limit=1,sort=nearest]



#### Max out range to end the raycast
###scoreboard players set .distance tf_rc 1000

