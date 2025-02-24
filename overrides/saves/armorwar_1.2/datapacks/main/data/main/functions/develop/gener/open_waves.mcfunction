execute at @s run tp @s ~ ~ ~ ~ -15.0


execute at @s positioned ~ ~1.62 ~ run summon item ^1.5 ^ ^1.8 {Tags:["mpar_facing","mpar_custom","menu","tmp"],NoGravity:1b,Item:{id:"minecraft:barrier",Count:1b,tag:{owner:0,buttons:[{cd:5,id:"minecraft:cobblestone_wall",title:'{"text":"§f←wave"}',run_command:"execute as @a[tag=cbutton] run function main:develop/gener/waves/page_up",pos:[1.0,-0.5,0.0]},{cd:5,id:"minecraft:zombie_spawn_egg",title:'{"text":""}',run_command:"execute as @a[tag=cbutton] run function main:develop/gener/waves/edit",pos:[2.0,-0.5,0.0],spec:"waves_show"},{cd:5,id:"minecraft:cobblestone_wall",title:'{"text":"§fwave→"}',run_command:"execute as @a[tag=cbutton] run function main:develop/gener/waves/page_down",pos:[3.0,-0.5,0.0]},{cd:5,id:"minecraft:barrier",title:'{"text":"§c返回"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/open",pos:[0.0,-0.8,0.0]},{cd:5,id:"minecraft:lime_wool",title:'{"text":"§f添加波"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/add",pos:[1.5,-1.2,0.0]},{cd:5,id:"minecraft:red_wool",title:'{"text":"§f删除波"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/dele",pos:[2.5,-1.2,0.0]}]}}}


execute if score @s making matches 0 unless data block 0 0 0 Items[0].tag.making[0].waves[0] run data remove entity @e[tag=tmp,limit=1] Item.tag.buttons[{spec:"waves_show"}]
execute if score @s making matches 1 unless data block 0 0 0 Items[0].tag.making[1].waves[0] run data remove entity @e[tag=tmp,limit=1] Item.tag.buttons[{spec:"waves_show"}]
execute if score @s making matches 2 unless data block 0 0 0 Items[0].tag.making[2].waves[0] run data remove entity @e[tag=tmp,limit=1] Item.tag.buttons[{spec:"waves_show"}]
execute if score @s making matches 3 unless data block 0 0 0 Items[0].tag.making[3].waves[0] run data remove entity @e[tag=tmp,limit=1] Item.tag.buttons[{spec:"waves_show"}]
execute if score @s making matches 4 unless data block 0 0 0 Items[0].tag.making[4].waves[0] run data remove entity @e[tag=tmp,limit=1] Item.tag.buttons[{spec:"waves_show"}]
execute if score @s making matches 5 unless data block 0 0 0 Items[0].tag.making[5].waves[0] run data remove entity @e[tag=tmp,limit=1] Item.tag.buttons[{spec:"waves_show"}]
execute if score @s making matches 6 unless data block 0 0 0 Items[0].tag.making[6].waves[0] run data remove entity @e[tag=tmp,limit=1] Item.tag.buttons[{spec:"waves_show"}]


execute store result entity @e[tag=tmp,limit=1] Item.tag.owner int 1 run scoreboard players get @s mpar_id
tag @e remove tmp