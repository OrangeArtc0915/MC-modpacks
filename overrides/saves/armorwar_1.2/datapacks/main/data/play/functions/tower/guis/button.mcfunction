execute if data entity @s SelectedItem.tag{fly_forw:1b} if score @s crc matches 1.. run function play:mhigh_light

scoreboard players set button_temp int 0

execute if score button_temp int matches 0 if score @s tower_gui matches -2 run function play:tower/guis/button--2
execute if score button_temp int matches 0 if score @s tower_gui matches -1 run function play:tower/guis/button--1
execute if score button_temp int matches 0 if score @s tower_gui matches 0 run function play:tower/guis/button-0
execute if score button_temp int matches 0 if score @s tower_gui matches 1..4 run function play:tower/guis/button-1_4
execute if score button_temp int matches 0 if score @s tower_gui matches 5..8 run function play:tower/guis/button-5_8
execute if score button_temp int matches 0 if score @s tower_gui matches 5..8 run function play:tower/guis/button-5_8
execute if score button_temp int matches 0 if score @s tower_gui matches 9..12 run function play:tower/guis/button-9_12
execute if score button_temp int matches 0 if score @s tower_gui matches 13..16 run function play:tower/guis/button-13_16
execute if score @s tower_gui matches 1..16 run function play:tower/guis/button-1_16