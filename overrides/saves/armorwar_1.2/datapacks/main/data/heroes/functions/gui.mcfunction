scoreboard players set temp9 int 1

execute unless data entity @s Inventory[{Slot:8b,tag:{waiting:bk}}] run scoreboard players set temp9 int 0
execute store result score temp10 int run clear @s barrier{waiting:bk} 0
execute if score temp10 int matches 2.. run clear @s barrier{waiting:bk}

execute if score temp9 int matches 0 run function heroes:items

execute if score @s hr matches 1 run function play:hr/guis/1
execute if score @s hr matches 2 run function play:hr/guis/2

execute if data entity @s Inventory[{Slot:-106b,tag:{waiting:bk}}] run tp @s 0 5 0

execute if score @s rctest matches 1.. run function heroes:select

scoreboard players set @s CD0 0
scoreboard players set @s CD1 0
scoreboard players set @s CD2 0
scoreboard players set @s CD3 0
scoreboard players set @s CD4 0
scoreboard players set @s CD5 0