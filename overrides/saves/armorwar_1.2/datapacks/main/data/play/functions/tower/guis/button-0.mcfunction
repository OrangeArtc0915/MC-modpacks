execute if data entity @s Inventory[{Slot:-106b,tag:{tower:arrow0}}] run function play:tower/build1
execute if data entity @s Inventory[{Slot:-106b,tag:{tower:gun0}}] run function play:tower/build2
execute if data entity @s Inventory[{Slot:-106b,tag:{tower:magic0}}] run function play:tower/build3
execute if data entity @s Inventory[{Slot:-106b,tag:{tower:soldier0}}] run function play:tower/build4

execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:arrow0}} run function play:tower/build1
execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:gun0}} run function play:tower/build2
execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:magic0}} run function play:tower/build3
execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:soldier0}} run function play:tower/build4

execute unless data entity @s Inventory[{tag:{tower:arrow0}}] run function play:tower/build1
execute unless data entity @s Inventory[{tag:{tower:gun0}}] run function play:tower/build2
execute unless data entity @s Inventory[{tag:{tower:magic0}}] run function play:tower/build3
execute unless data entity @s Inventory[{tag:{tower:soldier0}}] run function play:tower/build4

scoreboard players set button_temp int 1