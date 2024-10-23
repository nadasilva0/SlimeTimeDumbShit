summon armor_stand ~ ~-1.4 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["rifterang_grounded"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:item_frame",tag:{display:{Name:'{"text":"Rifterang"}'}}}]}
tp @e[type=armor_stand,tag=rifterang_grounded] ~ ~-1.4 ~ facing entity @p[tag=rifterang_thrower]
particle block{block_state:"minecraft:dirt"} ~ ~0.2 ~ 0.1 0.1 0.1 1 10 force

playsound minecraft:item.trident.hit_ground player @a ~ ~ ~ 1 1
playsound minecraft:item.trident.return player @a ~ ~ ~ 1 1

scoreboard players set .distance tf_rc 5000
schedule function dumb:rifterang/throw/call_return 1s