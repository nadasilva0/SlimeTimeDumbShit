## Called from tf_raycast:raycast upon any targets whose hitbox collides with the raycast

#### What you do to the target is up to you

tag @s add hitbyscythe
kill @e[type=interaction,tag=mel_lb]
damage @s 65 minecraft:player_attack by @a[tag=has_ragescythe,limit=1,sort=nearest]
summon creeper ~ ~-1 ~ {Tags:["hitbyscythe"],ExplosionRadius:3b,Fuse:0,ignited:1b}
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 1 1 force
playsound minecraft:custom.rageslash_explode player @a ~ ~1 ~


#### Max out range to end the raycast
###scoreboard players set .distance tf_rc 1000

