scoreboard players add @s grow_level 1

execute if entity @s[tag=tree_sapling] at @s run function tree:grow/sapling
execute if entity @s[tag=tree_root] at @s run function tree:grow/root
execute if entity @s[tag=tree_trunk] at @s run function tree:grow/trunk
execute if entity @s[tag=tree_crown] at @s run function tree:grow/crown

execute if entity @s[tag=main_trunk] run function tree:grow/up_test

tag @s add tree_grow