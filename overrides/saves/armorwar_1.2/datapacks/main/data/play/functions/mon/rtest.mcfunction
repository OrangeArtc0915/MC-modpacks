scoreboard players set temp int 1

execute store result score temp0 int run data get entity @s ArmorItems[3].tag.rotation[0] 10
execute store result score temp1 int run data get entity @s Rotation[0] 10
execute unless score temp0 int = temp1 int run scoreboard players set temp int 0

execute store result score temp0 int run data get entity @s ArmorItems[3].tag.rotation[1] 10
execute store result score temp1 int run data get entity @s Rotation[1] 10
execute unless score temp0 int = temp1 int run scoreboard players set temp int 0

execute if score temp int matches 0 run data modify entity @s Rotation set from entity @s ArmorItems[3].tag.rotation