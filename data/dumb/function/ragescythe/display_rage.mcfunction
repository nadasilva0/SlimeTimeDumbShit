## Intervals of damage are in 20
execute if score @s melRage matches 0..19 run title @s actionbar [{"text":"[","font":"minecraft:ragemeter","color":"#D01455"},{"text":"11111111","color":"#3D262F"},{"text":"]","color":"#D01455"}]
execute if score @s melRage matches 20..39 run title @s actionbar [{"text":"[1","font":"minecraft:ragemeter","color":"#D01455"},{"text":"1111111","color":"#3D262F"},{"text":"]","color":"#D01455"}]
execute if score @s melRage matches 40..59 run title @s actionbar [{"text":"[11","font":"minecraft:ragemeter","color":"#D01455"},{"text":"111111","color":"#3D262F"},{"text":"]","color":"#D01455"}]
execute if score @s melRage matches 60..79 run title @s actionbar [{"text":"[111","font":"minecraft:ragemeter","color":"#D01455"},{"text":"11111","color":"#3D262F"},{"text":"]","color":"#D01455"}]
execute if score @s melRage matches 80..99 run title @s actionbar [{"text":"[1111","font":"minecraft:ragemeter","color":"#D01455"},{"text":"1111","color":"#3D262F"},{"text":"]","color":"#D01455"}]
execute if score @s melRage matches 100..119 run title @s actionbar [{"text":"[11111","font":"minecraft:ragemeter","color":"#D01455"},{"text":"111","color":"#3D262F"},{"text":"]","color":"#D01455"}]
execute if score @s melRage matches 120..139 run title @s actionbar [{"text":"[111111","font":"minecraft:ragemeter","color":"#D01455"},{"text":"11","color":"#3D262F"},{"text":"]","color":"#D01455"}]
execute if score @s melRage matches 140..159 run title @s actionbar [{"text":"[1111111","font":"minecraft:ragemeter","color":"#D01455"},{"text":"1","color":"#3D262F"},{"text":"]","color":"#D01455"}]
execute if score @s melRage matches 160..299 run title @s actionbar [{"text":"[11111111]","font":"minecraft:ragemeter","color":"#D01455"}]
execute if score @s melRage matches 300.. run title @s actionbar [{"text":"[ [  11111111  ] ]","font":"minecraft:ragemeter","color":"#FF0000"}]

## Particle effect
execute if score @s melRage matches 0..299 run particle dust{color:[0.816,0.078,0.333],scale:1} ~ ~0.5 ~ 0.3 0.3 0.3 1 3 force
execute if score @s melRage matches 300.. run particle dust{color:[0.816,0.078,0.333],scale:2} ~ ~0.5 ~ 0.3 0.3 0.3 1 3 force

advancement revoke @s only dumb:ragescythe_display