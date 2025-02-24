scoreboard players set wave_waiting int 0
scoreboard players set wave_wait int -2147483648
scoreboard players set @a spectating 0
tag @a remove developing
worldborder set 500
kill @e[tag=mon_model]
kill @e[tag=boss_set]
kill @e[tag=soldier_point]
kill @e[tag=builder]
kill @e[tag=button_set,tag=!button_dhall]
kill @e[tag=play_set]
scoreboard players set game_end1 int 0
scoreboard players set gaming int 1
scoreboard players set gaming1 int 1
scoreboard players set boss_fighting int 0
data modify block 0 0 0 Items[0].tag.playing set from block 0 0 0 Items[0].tag.map-selected

execute if score random_d int matches 1 run tag @a[tag=waiting,limit=1,sort=random] add decision_maker
execute if score random_d int matches 0 run tag @a[tag=waiting,limit=1,scores={select=1}] add decision_maker

execute store result score enable_hero int run data get block 0 0 0 Items[0].tag.playing.heroes
execute unless data block 0 0 0 Items[0].tag.playing.heroes run scoreboard players set enable_hero int 1

execute as @a[tag=waiting] at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 0.5 1.0
execute as @a[tag=waiting,tag=!decision_maker] run function play:sphr
execute as @a[tag=!waiting,tag=!parkour] run function play:spectate
title @a[tag=waiting] title {"text":"游戏开始！"}

execute as @a[tag=decision_maker] run function play:dm/be
tellraw @a[tag=decision_maker] {"text":"请尽快布置防御塔","color":"gray"}

tag @a[tag=waiting] add player

#execute store result score wave_time int run data get block 0 0 0 Items[0].tag.playing.waves[0].time 20
scoreboard players set wave_time int 0

scoreboard players set wave int 0
execute store result score wavec int run data get block 0 0 0 Items[0].tag.playing.waves

function play:point

execute as @a[tag=waiting] run function play:tp

#execute as @e[tag=map_point] run function play:upd

tag @a remove waiting

scoreboard players set g_hp int 20
execute if data block 0 0 0 Items[0].tag.playing.g_hp store result score g_hp int run data get block 0 0 0 Items[0].tag.playing.g_hp

execute as @e[tag=map_tower] run function play:tower/set
execute as @e[tag=map_tower] at @s run function play:tower/build/remove

tag @e[tag=tjmarker] add waved

execute store result score coin int run data get block 0 0 0 Items[0].tag.playing.coin


bossbar set minecraft:game visible true
bossbar set minecraft:game players @a
bossbar set minecraft:game name ["",{"text":"\ue000","font":"s3:default"},{"score":{"name":"g_hp","objective":"int"}},{"text":"   "},{"text":"\ue001","font":"s3:default"},{"score":{"name":"coin","objective":"int"}},{"text":"   "},{"text":"\ue002","font":"s3:default"},{"score":{"name":"wave","objective":"int"}},{"text":"/"},{"score":{"name":"wavec","objective":"int"}}]
scoreboard players set monster_maxc int 0

execute store result score map_y1 int store result score map_y int store result score place_y int run data get block 0 0 0 Items[0].tag.playing.tag.map_pos[1]
scoreboard players add map_y int 7
scoreboard players add map_y1 int 20
execute store result score soldier_y int run data get block 0 0 0 Items[0].tag.playing.tag.map_pos[1] 10

scoreboard players set tower_1 int 1
scoreboard players set tower_2 int 1
scoreboard players set tower_3 int 1
scoreboard players set tower_4 int 1
scoreboard players set tower_5 int 1
scoreboard players set tower_6 int 1
scoreboard players set tower_7 int 1
scoreboard players set tower_8 int 1
scoreboard players set tower_9 int 1
scoreboard players set tower_10 int 1
scoreboard players set tower_11 int 1
scoreboard players set tower_12 int 1
scoreboard players set tower_13 int 1
scoreboard players set tower_14 int 1
scoreboard players set tower_15 int 1
scoreboard players set tower_16 int 1
execute if data block 0 0 0 Items[0].tag.playing.towers run function play:tower/ban

scoreboard players set reinforce int 0
scoreboard players set firerain int 0

execute store result score enable_skill int run data get block 0 0 0 Items[0].tag.playing.skills
execute unless data block 0 0 0 Items[0].tag.playing.skills run scoreboard players set enable_skill int 1

scoreboard players set reinforce_id int 100

scoreboard players reset @a parkour
tag @a remove parkour

execute as @a[tag=player] store result score @s muid run scoreboard players add #muid muid 1

scoreboard players reset * pdamage
scoreboard players reset * mdamage

scoreboard players set played int 0
execute store result score temp int run data get block 0 0 0 Items[0].tag.played
data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.played
scoreboard players set loop int 0
execute if score loop int < temp int run function play:played_test

scoreboard players set monster_notice int 0

execute store result score temp int run data get block 0 0 0 Items[0].tag.playing.play_sets
execute if score temp int matches 1.. run function play:sets

data modify block 0 0 0 Items[0].tag.towers_data set value [{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}]

execute unless entity @a[tag=decision_maker] if score ai int matches 1 run summon area_effect_cloud 0 11 0 {Tags:["play_set","build_ai","aec"],Duration:100}

execute store result score if_chal int run data get block 0 0 0 Items[0].tag.tree3[0].if_chal
execute if score if_chal int matches 1 run function play:chal/test

scoreboard players set game_win int 0

data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.playing.music_list
execute as @a[tag=player,scores={music_box=1}] run function play:start-m

scoreboard players set monster_max int 17
execute if data block 0 0 0 Items[0].tag.playing.mmaxc store result score monster_max int run data get block 0 0 0 Items[0].tag.playing.mmaxc