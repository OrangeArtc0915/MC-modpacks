kill @e[tag=lib_chara]

summon minecraft:armor_stand -139.5 72.0 -10.0 {Invulnerable:1b,Tags:["lib_chara","lib_set","dsp_chara"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{id:"minecraft:shield",Count:1b}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:golden_helmet",Count:1b}],Rotation:[-90.0f,0.0f]}

summon snowball -139.5 74.05 -10.8 {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:8597001}},NoGravity:1b,PickupDelay:32767s,Tags:["lib_chara","lib_set","lib_chara_item"]}

summon snowball -139.5 73.7 -11.5 {Item:{id:"minecraft:red_stained_glass_pane",Count:1b,tag:{cd:1,run_command:"function lib:chara/p1"}},NoGravity:1b,PickupDelay:32767s,Tags:["lib_chara","lib_set","lib_chara_p1","lib_button","tmp","button","mpar_custom","ban_shift"]}
scoreboard players set @e[tag=tmp,limit=1] d 5000
scoreboard players set @e[tag=tmp,limit=1] h 10000
scoreboard players set @e[tag=tmp,limit=1] l 5000
scoreboard players set @e[tag=tmp,limit=1] dy -10000
tag @e remove tmp

summon snowball -139.5 73.0 -11.5 {Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b,tag:{cd:1,run_command:"function lib:chara/p0"}},NoGravity:1b,PickupDelay:32767s,Tags:["lib_chara","lib_set","lib_chara_p0","lib_button","tmp","button","mpar_custom","ban_shift"]}
scoreboard players set @e[tag=tmp,limit=1] d 5000
scoreboard players set @e[tag=tmp,limit=1] h 10000
scoreboard players set @e[tag=tmp,limit=1] l 5000
scoreboard players set @e[tag=tmp,limit=1] dy -10000
tag @e remove tmp

summon minecraft:area_effect_cloud -139.5 72.9 -12.3 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"普攻"}',Tags:["lib_set","lib_skill","lib_chara_skil"]}
summon minecraft:area_effect_cloud -139.5 72.2 -12.3 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"普攻"}',Tags:["lib_set","lib_skill","lib_chara_name"]}
summon minecraft:area_effect_cloud -139.5 74.15 -11.5 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"普攻"}',Tags:["lib_set","lib_chara","lib_chara_text"]}

function lib:chara/updata