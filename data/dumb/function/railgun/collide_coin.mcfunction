## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

tag @s add railcoin
tag @a[tag=raycasting] add railcoincaster
execute as @e[distance=..20] run function dumb:railgun/hitpause
data merge entity @s {NoAI:1b}
particle minecraft:electric_spark ~ ~1 ~ 0.1 0.1 0.1 0.4 20 force
particle minecraft:flash ~ ~1 ~

schedule function dumb:railgun/stopsoundbcspaghetticode 1t
schedule function dumb:railgun/collide_coin_shoot 10t

#### Max out range to end the raycast
scoreboard players set .distance tf_rc 1000

#say collide_coin
