execute store result score x int run data get entity @s Pos[0] 10000
execute store result score y int run data get entity @s Pos[1] 10000
execute store result score z int run data get entity @s Pos[2] 10000
scoreboard players set min int -35000
scoreboard players set max int 35000
function math:random
scoreboard players operation x int += random int
function math:random
scoreboard players operation z int += random int
execute as @e[tag=math_marker,limit=1] run function main:store_pos
execute at @e[tag=math_marker,limit=1] align xyz run summon area_effect_cloud ~ ~ ~ {Tags:["tree_set","a_skill","tmp"],Duration:135}
scoreboard players set @e[tag=tmp,limit=1] int 0
execute as @e[tag=tmp,limit=1] at @s if entity @e[tag=tree_set,tag=!tmp,distance=..0.1] run kill @s
tag @e remove tmp