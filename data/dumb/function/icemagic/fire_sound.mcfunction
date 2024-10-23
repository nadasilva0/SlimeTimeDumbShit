scoreboard players set .soundplaying soundcheck 1
execute as @a[tag=!hearing_fire] run playsound minecraft:custom.ice_breath_loop master @a
tag @a add hearing_fire
