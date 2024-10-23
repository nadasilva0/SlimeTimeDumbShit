## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you


damage @s 5 minecraft:generic
tp @s @p[tag=babel]
playsound minecraft:custom.tongueimpact player @a ~ ~ ~ 1 1




#### Max out range to end the raycast
scoreboard players set .distance tf_rc 100

