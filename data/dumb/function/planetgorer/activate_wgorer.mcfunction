execute as @e[type=item_display,tag=wgorer_rift] at @s positioned ~-0.5 ~-1 ~-0.5 if entity @p[dx=0,dy=1.5,dz=0] run execute as @p at @e[type=item_display,tag=wgorer_waypoint] run function dumb:planetgorer/teleport

scoreboard players remove .wgorer_life projdist 1
execute if score .wgorer_life projdist matches 1.. run schedule function dumb:planetgorer/activate_wgorer 2t
execute if score .wgorer_life projdist matches 0 run function dumb:planetgorer/animate_closing_rift