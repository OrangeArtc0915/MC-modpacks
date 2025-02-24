execute store result score tempy int run data get entity @s Pos[1]
execute if score tempy int <= map_y int unless data entity @s SelectedItem.tag.no_spectate run gamemode spectator @s

execute if data entity @s Inventory[{Slot:-106b}].tag.stop run scoreboard players set stop int 1

#effect give @s minecraft:levitation 1 255 true
effect give @s minecraft:weakness 1 1 true
execute at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ #main:climbable run tp @s ~ ~1 ~


execute if score @e[tag=tower_editing,limit=1] soldier_CD matches 1.. run function play:tower/guis/button1

execute unless data entity @s SelectedItem.tag.no_select_tower run function play:tower/select5
execute store result score temp5 int run data get entity @s Rotation[1] 10
execute if data entity @s SelectedItem.tag.no_select_tower if score temp5 int matches 45.. run scoreboard players set change_select int 0

#各种gui
execute if score change_select int matches 0 run function play:tower/guis/button
execute if score @s tower_gui matches -1 run function play:tower/guis/-1
execute if score @s tower_gui matches 0 run function play:tower/guis/0
execute if score @s tower_gui matches 1 run function play:tower/guis/1
execute if score @s tower_gui matches 2 run function play:tower/guis/2
execute if score @s tower_gui matches 3 run function play:tower/guis/3
execute if score @s tower_gui matches 4 run function play:tower/guis/4
execute if score @s tower_gui matches 5 run function play:tower/guis/5
execute if score @s tower_gui matches 6 run function play:tower/guis/6
execute if score @s tower_gui matches 7 run function play:tower/guis/7
execute if score @s tower_gui matches 8 run function play:tower/guis/8
execute if score @s tower_gui matches 9 run function play:tower/guis/9
execute if score @s tower_gui matches 10 run function play:tower/guis/10
execute if score @s tower_gui matches 11 run function play:tower/guis/11
execute if score @s tower_gui matches 12 run function play:tower/guis/12
execute if score @s tower_gui matches 13 run function play:tower/guis/13
execute if score @s tower_gui matches 14 run function play:tower/guis/14
execute if score @s tower_gui matches 15 run function play:tower/guis/15
execute if score @s tower_gui matches 16 run function play:tower/guis/16