# Makes Grape photosynthesize
execute as @a[name="VitisViniferaaa",predicate=dumb:light_15] run effect give @s regeneration 3 0 true
schedule function dumb:events/photosynthesis 2s