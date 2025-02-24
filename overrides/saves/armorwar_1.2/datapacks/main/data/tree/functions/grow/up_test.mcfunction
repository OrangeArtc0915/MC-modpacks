scoreboard players operation temp int = @s y
execute as @e[tag=tree_crown,tag=!tree_grow] if score @s y > temp int run tag @s add tmp
execute if score @s dy matches 1.. run function tree:grow/up_loop
tag @e remove tmp