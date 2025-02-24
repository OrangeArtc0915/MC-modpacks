scoreboard players set temp int 1

execute unless data entity @s Inventory[{tag:{waiting:dm}}] run function maps:dm
execute unless data entity @s Inventory[{tag:{waiting:sp}}] run function maps:sp
execute unless data entity @s Inventory[{tag:{waiting:hr}}] run function maps:hr

execute if data entity @s Inventory[{Slot:-106b,tag:{waiting:dm}}] run function maps:dm
execute if data entity @s Inventory[{Slot:-106b,tag:{waiting:sp}}] run function maps:sp
execute if data entity @s Inventory[{Slot:-106b,tag:{waiting:hr}}] run function maps:hr

execute if data entity @s Inventory[{Slot:103b,tag:{waiting:dm}}] run function maps:dm

execute if entity @s[tag=choice_maker] unless data entity @s Inventory[{tag:{waiting:rc}}] run scoreboard players set temp int 0
execute unless data entity @s Inventory[{tag:{waiting:bk}}] run scoreboard players set temp int 0

execute if score temp int matches 0 run function maps:items