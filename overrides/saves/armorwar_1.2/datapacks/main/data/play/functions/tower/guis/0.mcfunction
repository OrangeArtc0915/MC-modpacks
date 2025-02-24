scoreboard players set temp int 0

execute unless data entity @s Inventory[{Slot:0b}].tag{tower:arrow0} run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:1b}].tag{tower:gun0} run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:2b}].tag{tower:magic0} run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:3b}].tag{tower:soldier0} run scoreboard players set temp int 1
execute if data entity @s Inventory[{Slot:4b}].id run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:5b}].tag{fly_forw:1b} run scoreboard players set temp int 1
execute if data entity @s Inventory[{Slot:6b}].id run scoreboard players set temp int 1


execute if score temp int matches 1 run function play:tower/select2