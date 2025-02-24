scoreboard players set temp int 0

execute if data entity @s Inventory[{Slot:0b}].id run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:1b}].tag{tower_skill:barrack3_0} run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:2b}].tag{tower_skill:barrack3_1} run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:3b}].tag{tower_skill:barrack3_2} run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:4b}].tag{tower:remove} run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:5b}].tag{fly_forw:1b} run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:6b}].tag{tower:station} run scoreboard players set temp int 1

execute if score temp int matches 1 run function play:tower/items/16