kill @e[type=armor_stand,tag=sculktrap,distance=..1,limit=1,sort=nearest]
playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 1 2
summon husk ~ ~ ~ {NoGravity:1b,Silent:1b,DeathLootTable:"minecraft:empty",Team:"nocollision",NoAI:1b,Tags:["sculktrap_active"],ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",count:1,components:{"minecraft:custom_name":'{"text":"Sculk Trap Closed"}'}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:19999980,show_particles:0b}]}