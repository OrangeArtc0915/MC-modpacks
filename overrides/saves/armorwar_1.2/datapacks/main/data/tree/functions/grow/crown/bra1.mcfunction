execute store result score r0 int run data get entity @s Rotation[0] 10000
scoreboard players set min int 250000
scoreboard players set max int 650000
function math:random
execute store result score temp int run data get entity @s UUID[0]
execute if score temp int matches 1.. run scoreboard players operation random int *= -1 int
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players operation r0 int += random int

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tree_crowned","tree_grow","tree_aec","tree_crown","tree_wood","tree_block","tmp"],Duration:2147483647}
execute at @s as @e[tag=tmp,limit=1] run tp @s ^ ^ ^1.5 ~ ~
execute as @e[tag=tmp,limit=1] at @s run function tree:grow/crown/leave
tag @e remove tmp

tag @s add tree_bra1