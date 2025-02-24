execute unless data entity @s Inventory[{tag:{tower:station}}] run function play:tower/station
execute if data entity @s Inventory[{Slot:-106b,tag:{tower:station}}] run function play:tower/station
execute if data entity @s SelectedItem.tag{tower:station} if score @s crc matches 1.. run function play:tower/station