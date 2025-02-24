execute at @s run summon area_effect_cloud ~1 ~ ~ {Duration:100,Tags:["change_station","aec","east","tmp","air","block_changer"]}
execute at @s run summon area_effect_cloud ~-1 ~ ~ {Duration:100,Tags:["change_station","aec","west","tmp","air","block_changer"]}
execute at @s run summon area_effect_cloud ~ ~ ~1 {Duration:100,Tags:["change_station","aec","south","tmp","air","block_changer"]}
execute at @s run summon area_effect_cloud ~ ~ ~-1 {Duration:100,Tags:["change_station","aec","north","tmp","air","block_changer"]}
execute at @a[tag=tmp2,limit=1] run tag @e[tag=tmp,limit=1,sort=nearest] add tmp1
scoreboard players set @e[tag=tmp1,limit=1] killtime 4
scoreboard players set duration int 5
execute at @e[tag=tmp1,limit=1] positioned ~ ~-1 ~ run function block_reserve:keep
execute at @e[tag=tmp1,limit=1,tag=east] run setblock ~ ~ ~ minecraft:light_blue_banner[rotation=12]
execute at @e[tag=tmp1,limit=1,tag=west] run setblock ~ ~ ~ minecraft:light_blue_banner[rotation=4]
execute at @e[tag=tmp1,limit=1,tag=south] run setblock ~ ~ ~ minecraft:light_blue_banner[rotation=0]
execute at @e[tag=tmp1,limit=1,tag=north] run setblock ~ ~ ~ minecraft:light_blue_banner[rotation=8]

kill @e[tag=tmp,tag=!tmp1]
execute as @e[tag=tower_editing,limit=1] run function play:tower/station3

execute as @a[tag=tmp2] at @s run playsound minecraft:block.grass.break player @s ~ ~ ~ 2 1.5
tag @e[tag=tmp1] remove tmp
tag @e remove tmp1