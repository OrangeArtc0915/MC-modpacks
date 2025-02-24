scoreboard players enable @s spectate
execute if score @s spectate matches -1 run function play:dm/spectate
execute if score @s spectate matches 1.. run function play:dm/spectating
effect give @s minecraft:invisibility 1 1 true
execute store result score temp0 int run data get entity @s Pos[0] 10
execute store result score temp1 int run data get entity @s Pos[1] 10
execute store result score temp2 int run data get entity @s Pos[2] 10
scoreboard players set temp int 0

execute if score temp1 int <= y_max int if score temp0 int >= x_min int if score temp0 int <= x_max int if score temp2 int >= z_min int if score temp2 int <= z_max int run scoreboard players set temp int 1
execute if score temp int matches 0 run function play:tp
execute if score temp1 int <= 0 int at @s run tp @s ~ ~8.0 ~