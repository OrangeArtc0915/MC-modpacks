scoreboard players set temp int 0
execute store result score tempx int run data get entity @s Pos[0] 10000
execute store result score tempy int run data get entity @s Pos[1] 10000
execute store result score tempz int run data get entity @s Pos[2] 10000
execute if score temp int matches ..10 run function rigid:link/test8