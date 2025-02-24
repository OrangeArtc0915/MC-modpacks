scoreboard players operation @s tower_gui = @e[tag=tower_editing,limit=1] build

execute if score @s tower_gui matches 1 run function play:tower/items/1
execute if score @s tower_gui matches 2 run function play:tower/items/2
execute if score @s tower_gui matches 3 run function play:tower/items/3
execute if score @s tower_gui matches 4 run function play:tower/items/4