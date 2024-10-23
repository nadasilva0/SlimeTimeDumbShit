## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

##particle minecraft:reverse_portal ~ ~0 ~ 0.1 0.1 0.1 0.1 10 force
damage @s[name=!VitisViniferaaa] 10 magic by VitisViniferaaa
##effect give @s[type=player,tag=!pure] minecraft:wither 3 1




#### Max out range to end the raycast
###scoreboard players set .distance tf_rc 0

