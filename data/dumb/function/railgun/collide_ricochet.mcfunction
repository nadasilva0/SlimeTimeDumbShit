## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

damage @s 111 minecraft:arrow by @a[tag=railcoincaster,limit=1,sort=nearest]
summon creeper ~ ~ ~ {powered:1b,Fuse:0,ignited:1b}
particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.15 0.5 0.15 3 111 force
effect give @p[tag=railcoincaster,distance=1..4] minecraft:instant_health 1 4 true

#### Max out range to end the raycast
scoreboard players set .distance tf_rc 1000

#say collide_ricochet