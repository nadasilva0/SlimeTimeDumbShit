#### Runs function based on tag of held carrot on stick

## Ikoss
execute if entity @s[scores={genericcooldown=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{astralglaive:1b}}}}] run function dumb:seismspin/startspin
execute if entity @s[scores={genericcooldown=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{astralaxe:1b}}}}] run function dumb:seismslam/startslam
execute if entity @s[scores={genericcooldown=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{astralspade:1b}}}}] run function dumb:seismbury/dig
execute if entity @s[scores={riftcooldown=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{riftgun:1b}}}}] run function dumb:riftgun/riftstart

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{crossfade:1b}}}}] run function dumb:crossfade/check
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{crossfade:2b}}}}] run function dumb:crossfade2/check
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{crossfade:3b}}}}] run function dumb:crossfade3/check

## Grapes
execute if entity @s[scores={genericcooldown=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{knives:1b}}}}] run function dumb:gknives/start
execute if entity @s[scores={genericcooldown=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{roots:1b}}}}] run function dumb:roots/startslam
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{stab:1b}}}}] run function dumb:stab
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{meteorhammer:1b}}}}] run function dumb:meteorhammer/start_swing
execute if entity @s[scores={iscrouched=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ragescythe:1b}}}}] run function dumb:ragescythe/start
execute if entity @s[scores={gundelay=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ragescythe:2b}}}}] run function dumb:ragescythe/spin/start_slash
execute if entity @s[scores={gundelay=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ragescythe:3b}}}}] run function dumb:ragescythe/spin_lb/start_slash
execute if entity @s[scores={gundelay=..0,iscrouched=1,melRage=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ragescythe:1b}}}}] run function dumb:ragescythe/blind

## Radco
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{philbert:1b}}}}] run function dumb:philbert/start
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{rebirth:1b}}}}] run function dumb:rebirth/start
execute if entity @s[scores={iscrouched=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{icemagic:1b}}}}] run function dumb:icemagic/fire_breath_start
execute if entity @s[scores={genericcooldown=..0,iscrouched=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{icemagic:1b}}}}] run function dumb:icemagic/deep_freeze_start

## Pixels
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{reverb:1b}}}}] run function dumb:reverb/check
execute if entity @s[scores={genericcooldown=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{railgun:1b}}}}] run function dumb:railgun/start
execute if entity @s[scores={iscrouched=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{pipboy:1b}}}}] run function dumb:pipboy/start
execute if entity @s[scores={iscrouched=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{pipboy:1b}}}}] run function dumb:pipboy/vatsstart
execute if entity @s[scores={gundelay=..0,iscrouched=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{marksman:1b}}}}] run function dumb:marksman/start_raycast
execute if entity @s[scores={genericcooldown=..0,iscrouched=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{marksman:1b}}}}] run function dumb:marksman/coin
execute if entity @s[scores={sculkSneakToggle=1,iscrouched=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{sneaker:1b}}}}] run function dumb:sneaker/start
execute if entity @s[scores={sculkSneakToggle=0,iscrouched=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{sneaker:1b}}}}] run function dumb:sneaker/end

## Choo/Babel
execute if entity @s[scores={iscrouched=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{worldgorer:1b}}}}] run function dumb:planetgorer/summonwaypoint
execute if entity @s[scores={iscrouched=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{worldgorer:1b}}}}] run function dumb:planetgorer/summonportal
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{longinus:1b}}}}] run function dumb:longinus/start
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{babylfall:1b}}}}] run function dumb:fallofbabylon/start
execute if entity @s[scores={gundelay=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{jawsofbabel:1b}}}}] run function dumb:jawsofbabel/slash_controller

## Mob Boss

## Zak
execute if entity @s[scores={genericcooldown=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{bladeofdarkness:1b}}}}] run function dumb:bladeofdarkness/start
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{soulstealer:1b}}}}] run function dumb:soulstealer/start

## The Profaned One
execute if entity @s[scores={gundelay=..0},nbt={Inventory:[{id:"minecraft:brick"}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{brick:1b}}}}] run function dumb:brick/start_raycast
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{pepsi:1b}}}}] run function dumb:pepsi/start_raycast
execute if entity @s[scores={gundelay=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{rifterang:1b}}}}] run function dumb:rifterang/start_throw
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{comicalpepsi:1b}}}}] run function dumb:comicalpepsi/start_raycast

## Guns
execute if entity @s[scores={gundelay=..0,pistolammo=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{pistol:1b}}}}] run function dumb:guns/pistol/start_raycast
execute if entity @s[scores={gundelay=..0,shotgunammo=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{shotgun:1b}}}}] run function dumb:guns/shotgun/start_raycast_master
execute if entity @s[scores={gundelay=..0,rifleammo=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{rifle:1b}}}}] run function dumb:guns/rifle/start_raycast
execute if entity @s[scores={gundelay=..0,sniperammo=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{sniper:1b}}}}] run function dumb:guns/sniper/start_raycast
execute if entity @s[scores={gundelay=..0,bigironammo=1..,iscrouched=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{bigiron:1b}}}}] run function dumb:guns/bigiron/start_raycast
execute if entity @s[scores={gundelay=..0,bigironammo=1..,iscrouched=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{bigiron:1b}}}}] run function dumb:guns/bigiron/start_raycast_precise
# Functions for reloading
execute if entity @s[scores={gundelay=..0,pistolammo=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{pistol:1b}}}}] run function dumb:guns/pistol/reload
execute if entity @s[scores={gundelay=..0,shotgunammo=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{shotgun:1b}}}}] run function dumb:guns/shotgun/reload
execute if entity @s[scores={gundelay=..0,rifleammo=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{rifle:1b}}}}] run function dumb:guns/rifle/reload
execute if entity @s[scores={gundelay=..0,sniperammo=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{sniper:1b}}}}] run function dumb:guns/sniper/reload
execute if entity @s[scores={gundelay=..0,bigironammo=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{bigiron:1b}}}}] run function dumb:guns/bigiron/reload

## Misc
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{carbine:1b}}}}] run function dumb:carbine/start_raycast
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{homingtest:1b}}}}] run function dumb:homingraycast/start_raycast
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{lookatizer:12b}}}}] run function dumb:lookatizer/start_raycast

## Exclusively for guns because I programmed them weird and can't be assed to unprogram them weird
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{pistol:1b}}}}] run function dumb:guns/pistol/holding
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{pistol:1b}}}}] run tag @s remove switchedpistol
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{shotgun:1b}}}}] run function dumb:guns/shotgun/holding
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{shotgun:1b}}}}] run tag @s remove switchedshotgun
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{rifle:1b}}}}] run function dumb:guns/rifle/holding
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{rifle:1b}}}}] run tag @s remove switchedrifle
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{sniper:1b}}}}] run function dumb:guns/sniper/holding
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{sniper:1b}}}}] run tag @s remove switchedsniper
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{bigiron:1b}}}}] run function dumb:guns/bigiron/holding

scoreboard players set @s used_carrot 0