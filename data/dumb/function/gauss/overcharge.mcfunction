## Whaddya mean, "Overcharge"?
clear @s golden_horse_armor[custom_data={gaussgun:1b,usable:true}]
scoreboard players set @s gausscharge 0
tag @a remove hearingTauCharge
playsound minecraft:custom.gaussovercharge player @a ~ ~ ~ 2 1
summon creeper ~ ~ ~ {powered:1b,Fuse:0,ignited:1b}
particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.15 0.5 0.15 3 60 force

summon armor_stand ~ ~0.1 ~ {Invulnerable:1b,Invisible:1b,Tags:["gausscorpse"],DisabledSlots:4144959,ArmorItems:[{id:"minecraft:iron_boots",count:1,components:{"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:flow"}}},{},{},{}]}
scoreboard players set @e[type=armor_stand,tag=gausscorpse] projdist 450
execute rotated ~ 0 run summon item ^ ^ ^1 {Item:{id:"minecraft:golden_horse_armor",count:1,components:{"minecraft:consumable":{consume_seconds:20,animation:"bow",sound:"block.note_block.bass",has_consume_particles:false},"minecraft:item_model":"slimetime:taucannon","minecraft:custom_data":{gaussgun:1b,usable:true},"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Tau Cannon"}',"minecraft:lore":['"Whaddya mean, \'Overcharge\'?"']}}}
function dumb:gauss/corpseloopschedule
kill @s