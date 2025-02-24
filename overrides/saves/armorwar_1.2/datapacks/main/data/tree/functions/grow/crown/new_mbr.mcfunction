summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tree_crowned","tree_grow","tree_aec","tree_crown","tree_wood","tree_block","tmp"],Duration:2147483647}
execute store result entity @s Rotation[0] float 1 run scoreboard players operation random int += theta int
execute at @s rotated ~ -50.0 as @e[tag=tmp,limit=1] run tp @s ^ ^ ^1.5 ~ ~
execute as @e[tag=tmp,limit=1] at @s run function tree:grow/crown/leave
tag @e remove tmp
scoreboard players remove mbr_count int 1