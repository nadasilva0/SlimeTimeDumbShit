## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run scoreboard players set @s hp_dmg 36

execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run scoreboard players set @s hp_dmg 16

execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run scoreboard players set @s hp_dmg 16


#### Max out range to end the raycast
scoreboard players set .distance tf_rc 50000

