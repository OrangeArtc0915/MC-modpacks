

execute at @s positioned ~ ~1.62 ~ run summon item ^2.5 ^1.0 ^3.0 {Tags:["mpar_facing","mpar_custom","menu","tmp"],NoGravity:1b,Item:{id:"minecraft:barrier",Count:1b,tag:{owner:0,buttons:[{cd:5,id:"minecraft:cobblestone_wall",title:'{"text":"§f是远程攻击"}',run_command:"function main:develop/mobs/rat/on",pos:[2.0,-0.5,0.0]},{id:"minecraft:tipped_arrow",title:'{"text":""}',run_command:"function main:develop/mobs/rat/tellraws",pos:[3.0,-0.5,0.0],spec:"rat_s_show"},{cd:5,id:"minecraft:cobblestone_wall",title:'{"text":"§f否远程攻击"}',run_command:"function main:develop/mobs/rat/off",pos:[4.0,-0.5,0.0]},{cd:5,id:"minecraft:cobblestone_wall",title:'{"text":"§f是飞行"}',run_command:"function main:develop/mobs/fly/on",pos:[2.0,-1.5,0.0]},{id:"minecraft:feather",title:'{"text":""}',run_command:"function main:develop/mobs/fly/tellraw",pos:[3.0,-1.5,0.0],spec:"fly_show"},{cd:10,id:"minecraft:cobblestone_wall",title:'{"text":"§f否飞行"}',run_command:"function main:develop/mobs/fly/off",pos:[4.0,-1.5,0.0]}]}}}

execute store result entity @e[tag=tmp,limit=1] Item.tag.owner int 1 run scoreboard players get @s mpar_id
tag @e remove tmp

function main:develop/mobs/kits1