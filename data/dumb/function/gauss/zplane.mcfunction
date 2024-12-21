### 180 - Rotation[0]

scoreboard players set #temp tf_rc 18000
execute store result score #temp1 tf_rc run data get entity @s Rotation[0] 100.0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation #temp tf_rc -= #temp1 tf_rc