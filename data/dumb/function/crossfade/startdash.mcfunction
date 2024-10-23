scoreboard players set @s reverbdashcooldown 460

tag @s add slimeshriekparticle
effect give @s minecraft:slowness 2 3 true
effect give @a[distance=1..20,team=!sculk] minecraft:darkness 3 0 true
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 1 1
scoreboard players set @s shriekloop 9
function dumb:crossfade/shriekparticle
schedule function dumb:crossfade/startslamschedule 40t