attribute @n[nbt={HurtTime:10s}] minecraft:armor modifier add 7a351452-1b21-4fb1-b7cd-aa6001152e9a -8 add_value
#execute as @n[nbt={HurtTime:10s},tag=!armorBreak] at @s run playsound minecraft:entity.item.break master @a ~ ~ ~ 1 1
#tag @n[nbt={HurtTime:10s}] add armorBreak
#scoreboard players set @s armorbreakcooldown 1200
advancement revoke @s only dumb:jawsofbabel