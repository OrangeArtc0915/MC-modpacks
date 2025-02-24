execute if score @s tower_gui matches 1..16 if data entity @s Inventory[{Slot:-106b,tag:{tower:remove,to_remove:1b}}] run function play:tower/remove
execute if score @s tower_gui matches 1..16 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:remove,to_remove:1b}} run function play:tower/remove


execute if score @s tower_gui matches 1..16 if data entity @s Inventory[{Slot:-106b,tag:{tower:remove,to_remove:0b}}] run replaceitem entity @s hotbar.4 carrot_on_a_stick{CustomModelData:8592012,HideFlags:63,display:{Lore:['{"text":"§f右键拆除"}'],Name:'{"text":"§c确定拆除塔吗"}'},tdisplay:1b,tower:remove,ui:1b,to_remove:1b}
execute if score @s tower_gui matches 1..16 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower:remove,to_remove:0b}} run replaceitem entity @s hotbar.4 carrot_on_a_stick{CustomModelData:8592012,HideFlags:63,display:{Lore:['{"text":"§f右键拆除"}'],Name:'{"text":"§c确定拆除塔吗"}'},tdisplay:1b,tower:remove,ui:1b,to_remove:1b}

scoreboard players set button_temp int 1