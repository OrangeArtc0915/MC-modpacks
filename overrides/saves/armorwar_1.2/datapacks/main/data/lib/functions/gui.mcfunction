scoreboard players set temp int 1

execute unless data entity @s Inventory[{tag:{lib:rc}}] run scoreboard players set temp int 0
execute unless data entity @s Inventory[{tag:{lib:bk}}] run scoreboard players set temp int 0

execute if score temp int matches 0 run function lib:items