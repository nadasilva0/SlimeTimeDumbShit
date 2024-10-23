schedule function dumb:events/activate_sculk_traps 2t
execute at @e[tag=sculktrap] run execute if entity @a[distance=..0.4] run function dumb:events/sculk_trap_snap
execute at @e[tag=sculktrap_active] run execute if entity @a[distance=..2] run function dumb:events/sculk_trap_effects