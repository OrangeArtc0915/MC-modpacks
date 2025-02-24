scoreboard players set temp int 0

execute if data entity @s Inventory[{Slot:0b}].id run scoreboard players set temp int 1
execute if data entity @s Inventory[{Slot:1b}].id run scoreboard players set temp int 1
execute if data entity @s Inventory[{Slot:2b}].id run scoreboard players set temp int 1
execute if score tower_5 int matches 1 unless data entity @s Inventory[{Slot:3b}].tag{tower:arrow1} run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:4b}].tag{tower:remove} run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:5b}].tag{fly_forw:1b} run scoreboard players set temp int 1
execute if data entity @s Inventory[{Slot:6b}].id run scoreboard players set temp int 1

execute if score temp int matches 1 run function play:tower/items/1