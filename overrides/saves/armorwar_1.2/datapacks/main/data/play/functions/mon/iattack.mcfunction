scoreboard players set x int 0
scoreboard players set y int -30000
scoreboard players set z int 0
execute at @s positioned ~ ~6 ~ run function math:vector1
tag @s add attacking
data modify entity @s NoAI set value 1b
execute store result score @s attacky run data get entity @s Pos[1] 10