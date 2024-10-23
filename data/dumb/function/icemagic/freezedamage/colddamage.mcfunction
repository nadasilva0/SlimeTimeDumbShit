effect give @s minecraft:slowness 5 5 true
effect give @s minecraft:weakness 5 5 true
damage @s 20 minecraft:freeze
scoreboard players set @s freezeScore -250
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0

particle minecraft:snowflake ~ ~1 ~ 0.6 0.8 0.6 0.001 120 force
particle block{block_state:"minecraft:packed_ice"} ~ ~1 ~ 0.6 0.8 0.6 0.001 150 force
particle minecraft:item_snowball ~ ~1 ~ 0.4 0.8 0.4 0.001 120 force