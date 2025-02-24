execute if score tower_13 int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{tower:arrow3}}] run function play:tower/build13
execute if score tower_14 int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{tower:gun3}}] run function play:tower/build14
execute if score tower_15 int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{tower:magic3}}] run function play:tower/build15
execute if score tower_16 int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{tower:soldier3}}] run function play:tower/build16

execute if score tower_13 int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:arrow3}} run function play:tower/build13
execute if score tower_14 int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:gun3}} run function play:tower/build14
execute if score tower_15 int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:magic3}} run function play:tower/build15
execute if score tower_16 int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:soldier3}} run function play:tower/build16

execute if score tower_13 int matches 1 if score @s tower_gui matches 9 unless data entity @s Inventory[{tag:{tower:arrow3}}] run function play:tower/build13
execute if score tower_14 int matches 1 if score @s tower_gui matches 10 unless data entity @s Inventory[{tag:{tower:gun3}}] run function play:tower/build14
execute if score tower_15 int matches 1 if score @s tower_gui matches 11 unless data entity @s Inventory[{tag:{tower:magic3}}] run function play:tower/build15
execute if score tower_16 int matches 1 if score @s tower_gui matches 12 unless data entity @s Inventory[{tag:{tower:soldier3}}] run function play:tower/build16

scoreboard players set button_temp int 1