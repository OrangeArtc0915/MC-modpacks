tag @s add trunk_uped
scoreboard players set @s dy 1
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tree_grow","tree_aec","tree_trunk","tree_log","tree_1","tree_block","tmp"],Duration:2147483647}
scoreboard players operation @e[tag=tmp,limit=1] grow_level = @s grow_level
scoreboard players add @e[tag=tmp,limit=1] grow_level 1
execute at @s run tp @e[tag=tmp,limit=1] ~ ~1.0 ~
execute if entity @s[tag=main_trunk] run tag @e[tag=tmp,limit=1] add main_trunk
tag @e remove tmp