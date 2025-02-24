scoreboard players set @s tower_gui -2
execute store result score tempy int run data get entity @s Pos[1]
execute if score @s spectate matches 0 if score tempy int > map_y int run function play:dm/cre
execute if entity @s[tag=selecting_tower2] run function play:tower/select4
tag @e[type=area_effect_cloud] remove tower_editing