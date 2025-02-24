scoreboard players set temp int 0

execute if entity @s[tag=attacking] if data entity @s Inventory[{Slot:-106b}].tag.weapon_near run function play:hr/escape

execute unless data entity @s Inventory[{Slot:103b}].tag.armor_head run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:102b}].tag.armor_chest run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:101b}].tag.armor_legs run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:100b}].tag.armor_feet run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:0b}].tag.weapon_near run scoreboard players set temp int 1
execute if data entity @s Inventory[{Sloy:1b}].id run scoreboard players set temp int 1

execute if score @s xp matches 1.. unless data entity @s Inventory[{Slot:2b}].tag.skill_0 run scoreboard players set temp int 1
execute if score @s xp matches 3.. unless data entity @s Inventory[{Slot:3b}].tag.skill_1 run scoreboard players set temp int 1
execute if score @s xp matches 5.. unless data entity @s Inventory[{Slot:4b}].tag.skill_2 run scoreboard players set temp int 1

execute if data entity @s Inventory[{Sloy:5b}].id run scoreboard players set temp int 1
execute if data entity @s Inventory[{Sloy:6b}].id run scoreboard players set temp int 1
execute if data entity @s Inventory[{Sloy:7b}].id run scoreboard players set temp int 1

execute if score temp int matches 1 run function play:hr/items/1