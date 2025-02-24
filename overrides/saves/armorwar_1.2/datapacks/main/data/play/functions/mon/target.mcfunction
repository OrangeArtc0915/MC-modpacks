execute as @e[tag=monster,tag=warrior] unless score @s target matches 1.. run tag @s add tmp
execute as @e[tag=monster,tag=zombie] unless score @s target matches 1.. run tag @s add tmp1
execute as @e[tag=tmp] at @s run function play:mon/target1
tag @e remove tmp
tag @e remove tmp1