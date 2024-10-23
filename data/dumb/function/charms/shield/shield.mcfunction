scoreboard players set @s charmcooldown 250
effect give @s minecraft:resistance 1 5 true
effect give @s minecraft:slowness 1 5 true
effect give @s minecraft:glowing 1 0 true
attribute @s minecraft:generic.knockback_resistance base set 1
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 0
schedule function dumb:charms/shield/shielddisable 20t