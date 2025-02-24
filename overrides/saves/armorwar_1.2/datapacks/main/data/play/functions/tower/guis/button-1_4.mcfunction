execute if score tower_5 int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{tower:arrow1}}] run function play:tower/build5
execute if score tower_6 int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{tower:gun1}}] run function play:tower/build6
execute if score tower_7 int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{tower:magic1}}] run function play:tower/build7
execute if score tower_8 int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{tower:soldier1}}] run function play:tower/build8

execute if score tower_5 int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:arrow1}} run function play:tower/build5
execute if score tower_6 int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:gun1}} run function play:tower/build6
execute if score tower_7 int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:magic1}} run function play:tower/build7
execute if score tower_8 int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:soldier1}} run function play:tower/build8

execute if score tower_5 int matches 1 if score @s tower_gui matches 1 unless data entity @s Inventory[{tag:{tower:arrow1}}] run function play:tower/build5
execute if score tower_6 int matches 1 if score @s tower_gui matches 2 unless data entity @s Inventory[{tag:{tower:gun1}}] run function play:tower/build6
execute if score tower_7 int matches 1 if score @s tower_gui matches 3 unless data entity @s Inventory[{tag:{tower:magic1}}] run function play:tower/build7
execute if score tower_8 int matches 1 if score @s tower_gui matches 4 unless data entity @s Inventory[{tag:{tower:soldier1}}] run function play:tower/build8

scoreboard players set button_temp int 1