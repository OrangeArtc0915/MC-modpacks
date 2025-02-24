scoreboard players operation @s wave_editing = waves_page int

execute at @s run tp @s ~ ~ ~ ~ -20.0


execute at @s positioned ~ ~1.62 ~ run summon item ^1.5 ^ ^1.8 {Tags:["mpar_facing","mpar_custom","menu","tmp"],NoGravity:1b,Item:{id:"minecraft:barrier",Count:1b,tag:{owner:0,buttons:[{cd:10,id:"minecraft:barrier",title:'{"text":"§c返回"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/open_waves",pos:[0.0,-0.8,0.0]},{cd:10,id:"minecraft:cobblestone_wall",title:'{"text":"§f←mob"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/mobs/page_up",pos:[1.0,0.2,0.0]},{cd:10,id:"minecraft:cobblestone_wall",title:'{"text":"§fmob→"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/mobs/page_down",pos:[3.0,0.2,0.0]},{cd:10,id:"minecraft:nether_star",title:'{"text":""}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/mobs/edit",pos:[2.0,0.2,0.0],spec:"map_mob_show"},{cd:5,id:"minecraft:lime_wool",title:'{"text":"§f添加怪物"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/mobs/add",pos:[1.5,-1.0,0.0]},{cd:5,id:"minecraft:red_wool",title:'{"text":"§f删除怪物"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/mobs/dele",pos:[2.5,-1.0,0.0]},{cd:10,id:"minecraft:yellow_concrete",title:'{"text":"§ftime"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/mobs/time",spec:"map_mobs_time",pos:[3.5,-1.0,0.0]}]}}}


execute store result entity @e[tag=tmp,limit=1] Item.tag.owner int 1 run scoreboard players get @s mpar_id
tag @e remove tmp


summon item 0 0 0 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"]}

execute if score @s making matches 0 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[0].waves
execute if score @s making matches 1 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[1].waves
execute if score @s making matches 2 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[2].waves
execute if score @s making matches 3 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[3].waves
execute if score @s making matches 4 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[4].waves
execute if score @s making matches 5 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[5].waves
execute if score @s making matches 6 run data modify entity @e[tag=tmp,limit=1] Item.tag.input set from block 0 0 0 Items[0].tag.making[6].waves

scoreboard players operation @e[tag=tmp,limit=1] list_input = @s wave_editing

execute as @e[tag=tmp] run function list_tool:set


execute if data entity @e[tag=tmp,limit=1] Item.tag.result.mob_types[0] run schedule function main:develop/gener/waves/mobs/upd2 2t

tag @s add map_mobs_upd

kill @e[tag=tmp]