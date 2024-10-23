## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

summon tnt
summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;16769709]},{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;16764817]},{shape:"small_ball",colors:[I;10577194]},{shape:"small_ball",colors:[I;7354134]},{shape:"small_ball",colors:[I;4857108]}]}}}}


#### Max out range to end the raycast
scoreboard players set .distance tf_rc 5000

