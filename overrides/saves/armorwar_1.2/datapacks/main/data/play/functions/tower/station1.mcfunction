execute store result score tempx0 int run data get entity @s Pos[0] 1000
execute store result score tempy0 int run data get entity @s Pos[1] 1000000
execute store result score tempz0 int run data get entity @s Pos[2] 1000
execute positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^1.0
execute store result score tempw0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
execute store result score tempw1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 1000
execute store result score tempw2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000
execute as @e[tag=tower_editing] store result score tempx int run data get entity @s Pos[0] 1000
execute as @e[tag=tower_editing] store result score tempy int run data get entity @s Pos[1] 1000000
execute as @e[tag=tower_editing] store result score tempz int run data get entity @s Pos[2] 1000

scoreboard players operation tempy1 int = tempy int
scoreboard players operation tempy1 int /= 1000 int
scoreboard players operation tempy int -= tempy0 int
scoreboard players operation tempy int /= tempw1 int
scoreboard players operation tempw0 int *= tempy int
scoreboard players operation tempw0 int /= 1000 int
scoreboard players operation tempx0 int += tempw0 int
scoreboard players operation tempw2 int *= tempy int
scoreboard players operation tempw2 int /= 1000 int
scoreboard players operation tempz0 int += tempw2 int

scoreboard players operation tempx int -= tempx0 int
scoreboard players operation tempz int -= tempz0 int
scoreboard players operation tempx int /= 10 int
scoreboard players operation tempz int /= 10 int
scoreboard players operation tempx int *= tempx int
scoreboard players operation tempz int *= tempz int
scoreboard players operation tempx int += tempz int

scoreboard players operation tempr int = @e[tag=tower_editing,limit=1] radius
scoreboard players operation tempr int *= tempr int
scoreboard players operation tempr int *= 100 int

tag @s add tmp2
execute if score tempx int matches ..582499 run scoreboard players set temp1 int 1

execute as @e[tag=math_marker,limit=1] run function play:tower/station5
execute at @e[tag=math_marker,limit=1] store result score temp2 int run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 command_block replace air
execute at @e[tag=math_marker,limit=1] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 air replace command_block

execute if score tempx int matches 582500.. if score tempx int <= tempr int if score temp2 int matches 0 as @e[tag=math_marker,limit=1] run function play:tower/station2
execute if score tempx int matches 582500.. if score tempx int > tempr int as @e[tag=tower_editing] at @s run function play:tower/display2
tag @s remove tmp2