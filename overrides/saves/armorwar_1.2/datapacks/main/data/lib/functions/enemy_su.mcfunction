kill @e[tag=lib_enemy,tag=!dsp_enemy]

summon snowball -133 72.5 -19 {Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b,tag:{CustomModelData:2000,cd:1,run_command:"function lib:enemy/p0"}},NoGravity:1b,PickupDelay:32767s,Tags:["lib_enemy","lib_set","lib_enemy_p0","lib_button","tmp","button","mpar_custom","ban_shift"]}
scoreboard players set @e[tag=tmp,limit=1] d 5000
scoreboard players set @e[tag=tmp,limit=1] h 10000
scoreboard players set @e[tag=tmp,limit=1] l 5000
scoreboard players set @e[tag=tmp,limit=1] dy -10000
tag @e remove tmp

summon snowball -133 73.2 -19 {Item:{id:"minecraft:red_stained_glass_pane",Count:1b,tag:{CustomModelData:2000,cd:1,run_command:"function lib:enemy/p1"}},NoGravity:1b,PickupDelay:32767s,Tags:["lib_enemy","lib_set","lib_enemy_p1","lib_button","tmp","button","mpar_custom","ban_shift"]}
scoreboard players set @e[tag=tmp,limit=1] d 5000
scoreboard players set @e[tag=tmp,limit=1] h 10000
scoreboard players set @e[tag=tmp,limit=1] l 5000
scoreboard players set @e[tag=tmp,limit=1] dy -10000
tag @e remove tmp

summon minecraft:area_effect_cloud -131.6 71.75 -19 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"箭塔"}',Tags:["lib_set","lib_enemy","lib_enemy_type"]}
summon minecraft:area_effect_cloud -131.6 72.45 -19 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"一级"}',Tags:["lib_set","lib_enemy","lib_enemy_name"]}
summon minecraft:area_effect_cloud -132.5 73.55 -19 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"普攻"}',Tags:["lib_set","lib_enemy","lib_enemy_line1"]}
summon minecraft:area_effect_cloud -132.5 74.05 -19 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"普攻"}',Tags:["lib_set","lib_enemy","lib_enemy_line0"]}

function lib:enemy/updata