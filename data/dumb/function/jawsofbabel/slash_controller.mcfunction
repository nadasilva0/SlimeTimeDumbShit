tag @s add has_jaws
#say Slash Check

execute if entity @s[scores={swordAttackState=0}] run function dumb:jawsofbabel/slash_e/start_slash_1
execute if entity @s[scores={swordAttackState=1}] run function dumb:jawsofbabel/slash_w/start_slash
execute if entity @s[scores={swordAttackState=2}] run function dumb:jawsofbabel/slash_e/start_slash_3
execute if entity @s[scores={swordAttackState=3}] run function dumb:jawsofbabel/spin/start_slash
execute if entity @s[scores={swordAttackState=4}] run function dumb:jawsofbabel/reset_attack_state

scoreboard players add @s swordAttackState 1

tag @s add slash_raycasting