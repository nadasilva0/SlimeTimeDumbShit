execute at @n[nbt={HurtTime:10s}] run particle minecraft:explosion ~ ~1 ~ 0.1 0.1 0.1 0.1 5 force
playsound minecraft:entity.explode player @a ~ ~ ~ 2 0
advancement revoke @s only dumb:faith