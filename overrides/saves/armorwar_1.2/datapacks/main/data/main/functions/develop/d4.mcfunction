scoreboard players set temp int 4

execute if data entity @s Inventory[{Slot:-106b}].tag{item:"map_edit1"} if data entity @s SelectedItem.id run function main:develop/edit
execute if data entity @s SelectedItem.tag{item:"map_enter"} run function main:develop/enter1
execute unless data entity @s SelectedItem.id run function main:develop/enter1
execute if data entity @s SelectedItem.tag{item:"map_finish"} run function main:develop/finish
execute if data entity @s SelectedItem.tag{item:"map_delete"} run function main:develop/delete