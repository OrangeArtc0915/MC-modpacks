execute store result score r1 int run data get entity @s Rotation[1] 10000
scoreboard players set min int 250000
scoreboard players set max int 450000
function math:random
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players operation r1 int += random int

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tree_crowned","tree_grow","tree_aec","tree_crown","tree_wood","tree_block","tmp"],Duration:2147483647}
execute at @s as @e[tag=tmp,limit=1] run tp @s ^ ^ ^1.5 ~ ~
execute as @e[tag=tmp,limit=1] at @s run function tree:grow/crown/leave
tag @e remove tmp

execute at @s unless entity @e[tag=tree_bra1,distance=..3.5] positioned 0.5 ~ 331.5 unless entity @s[distance=..5.0] run function tree:grow/crown/bra1_test

tag @s add tree_bra