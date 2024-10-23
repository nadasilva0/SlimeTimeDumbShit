particle shriek{delay:1} ~ ~1.5 ~ 0 0.2 0 1 1 force
scoreboard players remove @s shriekloop 1
execute if score @s shriekloop matches 1.. run schedule function dumb:reverb/shriekparticleschedule 4t