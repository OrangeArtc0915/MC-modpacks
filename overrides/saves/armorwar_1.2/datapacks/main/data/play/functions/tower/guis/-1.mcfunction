scoreboard players set temp int 0

execute if score wave int matches 1.. if score enable_skill int matches 1 if score reinforce int matches 0.. run function play:skills/reinforce/cd
execute if score wave int matches 1.. if score enable_skill int matches 1 if score firerain int matches 0.. run function play:skills/firerain/cd
execute if score wave int matches 1.. if score enable_skill int matches 1 unless data entity @s Inventory[{Slot:0b}].tag{item:reinforce} run scoreboard players set temp int 1
execute if score wave int matches 1.. if score enable_skill int matches 1 unless data entity @s Inventory[{Slot:1b}].tag{item:firerain} run scoreboard players set temp int 1

execute if score wave int matches 0 unless data entity @s Inventory[{Slot:0b}].tag{item:vist_self} run scoreboard players set temp int 1
execute if score wave int matches 0 unless data entity @s Inventory[{Slot:1b}].tag{item:vist_enmy} run scoreboard players set temp int 1

execute if data entity @s Inventory[{Slot:2b}].id run scoreboard players set temp int 1
execute if data entity @s Inventory[{Slot:3b}].id run scoreboard players set temp int 1
execute if data entity @s Inventory[{Slot:4b}].id run scoreboard players set temp int 1
execute unless data entity @s Inventory[{Slot:5b}].tag{fly_forw:1b} run scoreboard players set temp int 1
execute unless score wave_waiting int matches 1 if data entity @s Inventory[{Slot:7b}].tag{item:next_wave} run scoreboard players set temp int 1
execute if score wave_waiting int matches 1 unless data entity @s Inventory[{Slot:7b}].tag{item:next_wave} run scoreboard players set temp int 1

execute if score temp int matches 1 run function play:tower/items/-1