kill @e[tag=lib_tower]
summon item -131.2 73 -5 {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:8900010}},NoGravity:1b,PickupDelay:32767s,Tags:["lib_tower","lib_set","dsp_tower"]}

summon snowball -132.4 72.5 -5 {Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b,tag:{CustomModelData:2000,cd:1,run_command:"function lib:tower/p0"}},NoGravity:1b,PickupDelay:32767s,Tags:["lib_tower","lib_set","lib_tower_p0","lib_button","tmp","button","mpar_custom","ban_shift"]}
scoreboard players set @e[tag=tmp,limit=1] d 5000
scoreboard players set @e[tag=tmp,limit=1] h 10000
scoreboard players set @e[tag=tmp,limit=1] l 5000
scoreboard players set @e[tag=tmp,limit=1] dy -10000
tag @e remove tmp

summon snowball -132.4 73.2 -5 {Item:{id:"minecraft:red_stained_glass_pane",Count:1b,tag:{CustomModelData:2000,cd:1,run_command:"function lib:tower/p1"}},NoGravity:1b,PickupDelay:32767s,Tags:["lib_tower","lib_set","lib_tower_p1","lib_button","tmp","button","mpar_custom","ban_shift"]}
scoreboard players set @e[tag=tmp,limit=1] d 5000
scoreboard players set @e[tag=tmp,limit=1] h 10000
scoreboard players set @e[tag=tmp,limit=1] l 5000
scoreboard players set @e[tag=tmp,limit=1] dy -10000
tag @e remove tmp

summon snowball -132.4 73.9 -5 {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:8592001,cd:1,run_command:"function lib:tower/p2"}},NoGravity:1b,PickupDelay:32767s,Tags:["lib_tower","lib_set","lib_tower_p2","lib_button","tmp","button","mpar_custom","ban_shift"]}
scoreboard players set @e[tag=tmp,limit=1] d 5000
scoreboard players set @e[tag=tmp,limit=1] h 10000
scoreboard players set @e[tag=tmp,limit=1] l 5000
scoreboard players set @e[tag=tmp,limit=1] dy -10000
tag @e remove tmp


summon minecraft:area_effect_cloud -133.0 71.75 -5 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"箭塔"}',Tags:["lib_set","lib_tower","lib_tower_type"]}
summon minecraft:area_effect_cloud -133.0 72.45 -5 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"一级"}',Tags:["lib_set","lib_tower","lib_tower_rank"]}
summon minecraft:area_effect_cloud -132.5 74.15 -5 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"普攻"}',Tags:["lib_set","lib_tower","lib_tower_text"]}


function lib:tower/updata