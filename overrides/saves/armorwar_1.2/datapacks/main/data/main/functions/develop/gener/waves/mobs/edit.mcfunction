scoreboard players operation @s wave_editing = waves_page int

execute at @s run tp @s ~ ~ ~ ~ -20.0


execute at @s positioned ~ ~1.62 ~ run summon item ^1.5 ^ ^1.8 {Tags:["mpar_facing","mpar_custom","menu","tmp"],NoGravity:1b,Item:{id:"minecraft:barrier",Count:1b,tag:{owner:0,buttons:[{cd:10,id:"minecraft:barrier",title:'{"text":"§c返回"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/edit",pos:[0.0,-0.8,0.0]},{cd:10,id:"minecraft:cobblestone_wall",title:'{"text":"§f←type"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/mobs/mob/page_up",pos:[1.0,0.2,0.0]},{cd:10,id:"minecraft:cobblestone_wall",title:'{"text":"§ftype→"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/mobs/mob/page_down",pos:[3.0,0.2,0.0]},{cd:10,id:"minecraft:nether_star",title:'{"text":""}',pos:[2.0,0.2,0.0],spec:"map_mob_show"},{cd:10,id:"minecraft:light_blue_concrete",title:'{"text":"§fmin"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/mobs/mob/min",spec:"map_mob_min",pos:[1.5,-1.0,0.0]},{cd:10,id:"minecraft:magenta_concrete",title:'{"text":"§fmax"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/mobs/mob/max",spec:"map_mob_max",pos:[2.5,-1.0,0.0]},{cd:10,id:"minecraft:yellow_concrete",title:'{"text":"§ftime"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/mobs/mob/time",spec:"map_mob_time",pos:[3.5,-1.0,0.0]},{cd:10,id:"minecraft:white_concrete",title:'{"text":"§f添加路径"}',run_command:"execute as @a[tag=cbutton] if data entity @s SelectedItem.tag.spawn.paths at @s run function main:develop/gener/waves/mobs/mob/path_add",pos:[4.5,-1.0,0.0]},{cd:10,id:"minecraft:red_concrete",title:'{"text":"§f移除路径"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/waves/mobs/mob/path_re",pos:[4.5,0.5,0.0]}]}}}


execute store result entity @e[tag=tmp,limit=1] Item.tag.owner int 1 run scoreboard players get @s mpar_id
tag @e remove tmp

schedule function main:develop/gener/waves/mobs/mob/upd2 2t
tag @s add map_mob_upd