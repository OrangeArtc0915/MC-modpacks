execute store result score temp int if entity @e[tag=map_point,distance=..0.5]
execute if score temp int matches 2.. run tag @s add tmp
execute if score temp int matches 2.. run kill @e[tag=!tmp,distance=..0.5]