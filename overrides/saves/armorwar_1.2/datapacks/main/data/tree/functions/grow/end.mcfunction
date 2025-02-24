scoreboard players set grow int 0
tag @e remove tree_grow
execute store result score tree2 int run data get block 0 0 0 Items[0].tag.tree2
execute store result block 0 0 0 Items[0].tag.tree2 int 1 run scoreboard players add tree2 int 1