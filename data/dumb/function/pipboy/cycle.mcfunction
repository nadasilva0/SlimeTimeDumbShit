scoreboard players add @a vatsaim 1
execute as @a[scores={vatsaim=5..}] at @s run scoreboard players set @a vatsaim 1
playsound minecraft:custom.vatsselect master @a ~ ~ ~ 0.7 1

execute if score @s vatsaim matches 1 run title @s actionbar {"text":"Target: Head","color":"#00FF00"}

execute if score @s vatsaim matches 2 run title @s actionbar {"text":"Target: Torso","color":"#00FF00"}

execute if score @s vatsaim matches 3 run title @s actionbar {"text":"Target: Arms","color":"#00FF00"}

execute if score @s vatsaim matches 4 run title @s actionbar {"text":"Target: Legs","color":"#00FF00"}