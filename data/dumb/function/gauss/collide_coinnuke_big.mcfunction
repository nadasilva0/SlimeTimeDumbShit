playsound minecraft:entity.generic.explode player @a ~ ~ ~ 99 1
playsound minecraft:custom.railgun_shoot player @a ~ ~ ~ 2 1
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 5 force
execute as @e[distance=..10] at @s run damage @s 777 minecraft:fireworks
summon firework_rocket ~3 ~ ~ {LifeTime:10,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,colors:[I;16737792],fade_colors:[I;9437439]}]}}}}
summon firework_rocket ~-3 ~ ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,colors:[I;16737792],fade_colors:[I;9437439]}]}}}}
summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,colors:[I;16737792],fade_colors:[I;9437439]}]}}}}
particle minecraft:wax_on ~ ~-1 ~ 0 0 0 50 100 force
kill @s