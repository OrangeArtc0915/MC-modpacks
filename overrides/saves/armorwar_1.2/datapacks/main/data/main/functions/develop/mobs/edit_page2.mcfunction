

execute at @s positioned ~ ~1.62 ~ run summon item ^2.5 ^1.0 ^3.0 {Tags:["mpar_facing","mpar_custom","menu","tmp"],NoGravity:1b,Item:{id:"minecraft:barrier",Count:1b,tag:{owner:0,buttons:[{cd:10,id:"minecraft:end_stone_brick_wall",title:'{"text":"§f←10AT"}',run_command:"function main:develop/mobs/at/m10",pos:[1.0,-0.5,0.0]},{cd:5,id:"minecraft:sandstone_wall",title:'{"text":"§f←1AT"}',run_command:"function main:develop/mobs/at/m1",pos:[2.0,-0.5,0.0]},{id:"minecraft:iron_sword",title:'{"text":""}',run_command:"function main:develop/mobs/at/tellraw",pos:[3.0,-0.5,0.0],spec:"at_show"},{cd:5,id:"minecraft:sandstone_wall",title:'{"text":"§f1AT→"}',run_command:"function main:develop/mobs/at/p1",pos:[4.0,-0.5,0.0]},{cd:10,id:"minecraft:end_stone_brick_wall",title:'{"text":"§f10AT→"}',run_command:"function main:develop/mobs/at/p10",pos:[5.0,-0.5,0.0]},{cd:10,id:"minecraft:end_stone_brick_wall",title:'{"text":"§f←10CD"}',run_command:"function main:develop/mobs/at_cd/m10",pos:[1.0,-1.5,0.0]},{cd:5,id:"minecraft:sandstone_wall",title:'{"text":"§f←1CD"}',run_command:"function main:develop/mobs/at_cd/m1",pos:[2.0,-1.5,0.0]},{id:"minecraft:anvil",title:'{"text":""}',run_command:"function main:develop/mobs/at_cd/tellraw",pos:[3.0,-1.5,0.0],spec:"at_cd_show"},{cd:5,id:"minecraft:sandstone_wall",title:'{"text":"§f1CD→"}',run_command:"function main:develop/mobs/at_cd/p1",pos:[4.0,-1.5,0.0]},{cd:10,id:"minecraft:end_stone_brick_wall",title:'{"text":"§f10CD→"}',run_command:"function main:develop/mobs/at_cd/p10",pos:[5.0,-1.5,0.0]}]}}}



execute store result entity @e[tag=tmp,limit=1] Item.tag.owner int 1 run scoreboard players get @s mpar_id
tag @e remove tmp

function main:develop/mobs/kits1