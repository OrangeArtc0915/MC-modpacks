scoreboard players set if_chal int 0
execute store result score if_chal int run data get block 0 0 0 Items[0].tag.tree3[0].if_chal

scoreboard players set temp9 int 1

execute unless data entity @s Inventory[{Slot:8b,tag:{waiting:bk}}] run scoreboard players set temp9 int 0
execute store result score temp10 int run clear @s barrier{waiting:bk} 0
execute if score temp10 int matches 2.. run clear @s barrier{waiting:bk}

execute unless data entity @s Inventory[{Slot:4b,tag:{waiting:chal}}] run scoreboard players set temp9 int 0
execute unless data entity @s Inventory[{Slot:5b,tag:{waiting:sp}}] run scoreboard players set temp9 int 0

execute if data entity @s Inventory[{Slot:-106b,tag:{waiting:bk}}] run tp @s 0 5 0
execute if data entity @s Inventory[{Slot:-106b,tag:{waiting:sp}}] run function tree:sp

execute if score if_chal int matches 0..1 if data entity @s Inventory[{Slot:-106b,tag:{waiting:chal}}] run function tree:chal0
execute if score if_chal int matches 0 if score @s crc matches 1.. if data entity @s SelectedItem.tag{waiting:chal} run function tree:chal1
execute if score if_chal int matches 2 if data entity @s Inventory[{Slot:-106b,tag:{waiting:chal}}] run function tree:chal2

execute if score temp9 int matches 0 run function tree:items

title @s[gamemode=spectator] actionbar {"text":"使用/trigger spawn返回"}
tp @s[gamemode=spectator,scores={spawn=1..}] 0 5 0