## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

execute facing entity @n[tag=!raycasting,tag=!coin,type=!#slimelib:not_mob,distance=..20,limit=1] feet if block ~ ~ ~ #slimelib:raycast_pass run function dumb:gauss/start_raycast_charge1
particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.4 20 force
particle minecraft:flash ~ ~ ~

#### Max out range to end the raycast
scoreboard players set .distance tf_rc 1000

