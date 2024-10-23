## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

damage @s 8 minecraft:player_attack by @a[tag=has_ragescythe,limit=1,sort=nearest]
tag @s add mel_lb_target
execute as @a[tag=has_ragescythe,limit=1,sort=nearest] at @s run function dumb:ragescythe/limit_break/start
#say i am going to go missing soon


#### Max out range to end the raycast
###scoreboard players set .distance tf_rc 1000

