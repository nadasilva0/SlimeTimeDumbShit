attribute @n[nbt={HurtTime:10s}] minecraft:generic.max_health modifier add e2491a5f-c42a-4e7b-b441-e73c14512dcf -0.3 add_multiplied_total
playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 1 2

tag @s add disableregen
schedule function dumb:charms/babel/healdisable 2t
effect give @s minecraft:regeneration 1 30 true

advancement revoke @s only dumb:eyeofbabel