

execute at @s positioned ~ ~1.62 ~ run summon item ^2.5 ^1.0 ^3.0 {Tags:["mpar_facing","mpar_custom","menu","tmp"],NoGravity:1b,Item:{id:"minecraft:barrier",Count:1b,tag:{owner:0,buttons:[{cd:10,id:"minecraft:cobblestone_wall",title:'{"text":"§f←type"}',run_command:"function main:develop/mobs/type/page_up",pos:[1.0,-0.5,0.0]},{id:"minecraft:sheep_spawn_egg",title:'{"text":""}',run_command:"function main:develop/mobs/type/tellraw",pos:[2.0,-0.5,0.0],spec:"type_show"},{cd:10,id:"minecraft:cobblestone_wall",title:'{"text":"§ftype→"}',run_command:"function main:develop/mobs/type/page_down",pos:[3.0,-0.5,0.0]},{cd:10,id:"minecraft:end_stone_brick_wall",title:'{"text":"§f←10HP"}',run_command:"function main:develop/mobs/health/m10",pos:[1.0,-1.5,0.0]},{cd:5,id:"minecraft:sandstone_wall",title:'{"text":"§f←1HP"}',run_command:"function main:develop/mobs/health/m1",pos:[2.0,-1.5,0.0]},{id:"minecraft:end_crystal",title:'{"text":""}',run_command:"function main:develop/mobs/health/tellraw",pos:[3.0,-1.5,0.0],spec:"health_show"},{cd:5,id:"minecraft:sandstone_wall",title:'{"text":"§f1HP→"}',run_command:"function main:develop/mobs/health/p1",pos:[4.0,-1.5,0.0]},{cd:10,id:"minecraft:end_stone_brick_wall",title:'{"text":"§f10HP→"}',run_command:"function main:develop/mobs/health/p10",pos:[5.0,-1.5,0.0]}]}}}


execute store result entity @e[tag=tmp,limit=1] Item.tag.owner int 1 run scoreboard players get @s mpar_id
tag @e remove tmp

function main:develop/mobs/kits1