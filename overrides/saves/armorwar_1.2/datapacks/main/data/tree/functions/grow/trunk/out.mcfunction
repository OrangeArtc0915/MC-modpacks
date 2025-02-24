summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tree_grow","tree_aec","tree_trunk","tree_log","tree_1","tree_block","tmp"],Duration:2147483647}
tp @e[tag=tmp,limit=1] ~ ~ ~
scoreboard players set @e[tag=tmp,limit=1] grow_level 1
tag @e remove tmp

execute positioned ~ ~ ~ if block ~ ~-1 ~ air run function grow:trunk/out_down
execute positioned ~ ~-1 ~ if block ~ ~-1 ~ air run function grow:trunk/out_down
execute positioned ~ ~-2 ~ if block ~ ~-1 ~ air run function grow:trunk/out_down
execute positioned ~ ~-3 ~ if block ~ ~-1 ~ air run function grow:trunk/out_down

execute if entity @s[tag=trunk_8] run tag @s add trunk_9
execute if entity @s[tag=trunk_7] run tag @s add trunk_8
execute if entity @s[tag=trunk_6] run tag @s add trunk_7
execute if entity @s[tag=trunk_5] run tag @s add trunk_6
execute if entity @s[tag=trunk_4] run tag @s add trunk_5
execute if entity @s[tag=trunk_3] run tag @s add trunk_4
execute if entity @s[tag=trunk_2] run tag @s add trunk_3
execute if entity @s[tag=trunk_1] run tag @s add trunk_2
tag @s add trunk_1

scoreboard players set min int 1
scoreboard players set max int 100
function math:random

execute if score @s y matches 9..10 if entity @s[tag=trunk_3] if score random int matches 1..20 run tag @s add trunk_outed
execute if score @s y matches 11..15 if entity @s[tag=trunk_2] if score random int matches 1..90 run tag @s add trunk_outed
execute if score @s y matches 16..18 if entity @s[tag=trunk_1] if score random int matches 1..90 run tag @s add trunk_outed