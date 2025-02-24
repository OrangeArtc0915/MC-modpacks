execute if score tower_9 int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{tower:arrow2}}] run function play:tower/build9
execute if score tower_10 int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{tower:gun2}}] run function play:tower/build10
execute if score tower_11 int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{tower:magic2}}] run function play:tower/build11
execute if score tower_12 int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{tower:soldier2}}] run function play:tower/build12

execute if score tower_9 int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:arrow2}} run function play:tower/build9
execute if score tower_10 int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:gun2}} run function play:tower/build10
execute if score tower_11 int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:magic2}} run function play:tower/build11
execute if score tower_12 int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:soldier2}} run function play:tower/build12

execute if score tower_9 int matches 1 if score @s tower_gui matches 5 unless data entity @s Inventory[{tag:{tower:arrow2}}] run function play:tower/build9
execute if score tower_10 int matches 1 if score @s tower_gui matches 6 unless data entity @s Inventory[{tag:{tower:gun2}}] run function play:tower/build10
execute if score tower_11 int matches 1 if score @s tower_gui matches 7 unless data entity @s Inventory[{tag:{tower:magic2}}] run function play:tower/build11
execute if score tower_12 int matches 1 if score @s tower_gui matches 8 unless data entity @s Inventory[{tag:{tower:soldier2}}] run function play:tower/build12

scoreboard players set button_temp int 1