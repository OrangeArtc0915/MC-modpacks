execute store result score tree2 int run data get block 0 0 0 Items[0].tag.tree2
scoreboard players set tree_max_y int 0
execute as @e[tag=tree_aec] store result score @s y run data get entity @s Pos[1]
execute positioned 0 -10 331 run scoreboard players set @e[tag=tree_aec,tag=!tree_grow,limit=25,sort=nearest] dy 0
execute positioned 0 -10 331 as @e[tag=tree_aec,tag=!tree_grow,limit=25,sort=nearest] if score tree2 int matches ..9 run function tree:grow/main
execute unless entity @e[tag=tree_aec,tag=!tree_grow] run function tree:grow/end