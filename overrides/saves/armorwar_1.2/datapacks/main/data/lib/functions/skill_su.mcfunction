kill @e[tag=lib_skill]

summon minecraft:armor_stand -125.5 72 -13.0 {Invulnerable:1b,Tags:["lib_skill","lib_set","dsp_skill"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{id:"minecraft:shield",Count:1b}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:golden_helmet",Count:1b}],Rotation:[90.0f,0.0f]}

summon snowball -126 74.1 -12.2 {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:8597001}},NoGravity:1b,PickupDelay:32767s,Tags:["lib_skill","lib_set","lib_skill_item"]}

summon snowball -126 73.5 -11.5 {Item:{id:"minecraft:light_blue_stained_glass_pane",Count:1b,tag:{cd:1,run_command:"function lib:skill/p0"}},NoGravity:1b,PickupDelay:32767s,Tags:["lib_skill","lib_set","lib_skill_p0","lib_button","tmp","button","mpar_custom","ban_shift"]}
scoreboard players set @e[tag=tmp,limit=1] d 5000
scoreboard players set @e[tag=tmp,limit=1] h 10000
scoreboard players set @e[tag=tmp,limit=1] l 5000
scoreboard players set @e[tag=tmp,limit=1] dy -10000
tag @e remove tmp

summon minecraft:area_effect_cloud -126 72.7 -10.7 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"普攻"}',Tags:["lib_set","lib_skill","lib_skill_name"]}

summon minecraft:area_effect_cloud -126 73.95 -11.5 {Duration:2147483647,CustomNameVisible:1b,CustomName:'{"text":"普攻"}',Tags:["lib_set","lib_skill","lib_skill_text"]}

function lib:skill/updata