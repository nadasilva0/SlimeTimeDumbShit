## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

execute facing entity @n[tag=!raycasting,tag=!coin,type=!#slimelib:not_mob,distance=..15,limit=1] feet if block ~ ~ ~ #slimelib:raycast_pass run function dumb:marksman/start_raycast_coin
particle minecraft:electric_spark ~ ~1 ~ 0.1 0.1 0.1 0.4 20 force
particle minecraft:flash ~ ~1 ~

#### Max out range to end the raycast
scoreboard players set .distance tf_rc 1000

