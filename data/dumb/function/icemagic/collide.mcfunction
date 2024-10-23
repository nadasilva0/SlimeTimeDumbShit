## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

damage @s[team=!smarmallies] 2 minecraft:freeze
effect give @s minecraft:slowness 2 1 true
effect give @s minecraft:weakness 2 0 true

scoreboard players add @s freezeScore 25
data merge entity @s {Fire:0}




#### Max out range to end the raycast
scoreboard players set .distance tf_rc 100

