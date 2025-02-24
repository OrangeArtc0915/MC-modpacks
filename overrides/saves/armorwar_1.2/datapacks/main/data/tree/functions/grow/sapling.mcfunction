kill @s
scoreboard players add @s dy 2
summon area_effect_cloud ~ ~ ~ {Tags:["tree_grow","tree_aec","tree_root","tree_log","tree_1","tree_block","tree_rooted","tmp5"],Duration:2147483647}
scoreboard players set @e[tag=tmp5,limit=1] root_main1 150000
tag @e remove tmp5
summon area_effect_cloud ~ ~1 ~ {Tags:["tree_grow","tree_aec","tree_trunk","tree_fence","tree_block","tree_trunked","main_trunk"],Duration:2147483647}
summon area_effect_cloud ~ ~2 ~ {Tags:["tree_grow","tree_aec","tree_crown","tree_leave","tree_block"],Duration:2147483647}
setblock ~ ~ ~ air