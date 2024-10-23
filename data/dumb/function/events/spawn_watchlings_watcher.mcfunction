execute store result score .watchlings random run random value 1..5
execute if score .watchlings random matches 1 as @r at @s run summon vex ~ ~20 ~ {CustomNameVisible:0b,Team:"watcher",CustomName:'{"text":"Watchling"}',HandItems:[{id:"minecraft:air",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
execute if score .watchlings random matches 1..2 as @r at @s run summon vex ~30 ~ ~ {CustomNameVisible:0b,Team:"watcher",CustomName:'{"text":"Watchling"}',HandItems:[{id:"minecraft:air",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
execute if score .watchlings random matches 1..3 as @r at @s run summon vex ~-30 ~ ~ {CustomNameVisible:0b,Team:"watcher",CustomName:'{"text":"Watchling"}',HandItems:[{id:"minecraft:air",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
execute if score .watchlings random matches 1..4 as @r at @s run summon vex ~ ~ ~30 {CustomNameVisible:0b,Team:"watcher",CustomName:'{"text":"Watchling"}',HandItems:[{id:"minecraft:air",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
execute if score .watchlings random matches 1..5 as @r at @s run summon vex ~ ~ ~-30 {CustomNameVisible:0b,Team:"watcher",CustomName:'{"text":"Watchling"}',HandItems:[{id:"minecraft:air",Count:1b},{}],HandDropChances:[0.000F,0.085F]}


schedule function dumb:events/spawn_watchlings_watcher 30s