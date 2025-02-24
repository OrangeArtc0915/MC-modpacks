execute store result score @s y run data get entity @s Pos[1]
execute if entity @s[tag=tree_root,scores={y=10..}] run tag @s add killed
#execute if block ~ ~ ~ #main:tree run tag @s add killed