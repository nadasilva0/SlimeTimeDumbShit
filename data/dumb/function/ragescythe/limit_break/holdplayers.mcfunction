tp @a[tag=has_ragescythe,limit=1] @e[type=interaction,tag=mel_tp,limit=1]
tp @e[tag=mel_lb_target,limit=1] @e[type=interaction,tag=target_tp,limit=1]

scoreboard players remove .timer melRage 1
execute if score .timer melRage matches 1.. run schedule function dumb:ragescythe/limit_break/holdplayers 1t
execute if score .timer melRage matches 0 run function dumb:ragescythe/limit_break/end