particle sculk_charge{roll:0} ~ ~0.1 ~ 0.4 0 0.4 0 5 force
fill ~0.5 ~0 ~0.5 ~-0.5 ~-1 ~-0.5 sculk replace #minecraft:sculk_replaceable

execute if score @s sculkSneakToggle matches 0 run schedule function dumb:sneaker/effect_schedule 1t