execute if score .soundplaying soundcheck matches 0 run effect clear @a[tag=hearing_fire] minecraft:slowness
execute if score .soundplaying soundcheck matches 0 run stopsound @a master minecraft:custom.ice_breath_loop
execute if score .soundplaying soundcheck matches 0 run tag @a remove hearing_fire
execute if score .soundplaying soundcheck matches 0 run tag @a remove shooting_fire
execute if score .soundplaying soundcheck matches 1 run schedule function dumb:icemagic/fire_stop_sound 6t
scoreboard players set .soundplaying soundcheck 0