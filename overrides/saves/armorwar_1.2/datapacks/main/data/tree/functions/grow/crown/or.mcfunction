tag @s remove tree_leave
tag @s add tree_wood
tag @s add tree_block
tag @s add tree_crowned

scoreboard players set min int 500
scoreboard players set max int 799
function math:random
execute store result score mbr_count int run scoreboard players operation random int /= 100 int

scoreboard players set theta int 360
scoreboard players operation theta int /= random int

scoreboard players set min int 1
scoreboard players set max int 360
function math:random

execute if score mbr_count int matches 1.. run function tree:grow/crown/new_mbr
execute if score mbr_count int matches 1.. run function tree:grow/crown/new_mbr
execute if score mbr_count int matches 1.. run function tree:grow/crown/new_mbr
execute if score mbr_count int matches 1.. run function tree:grow/crown/new_mbr
execute if score mbr_count int matches 1.. run function tree:grow/crown/new_mbr
execute if score mbr_count int matches 1.. run function tree:grow/crown/new_mbr
execute if score mbr_count int matches 1.. run function tree:grow/crown/new_mbr