function xdcf:loop_z
execute store result entity @s Pos[2] double 0.1 run scoreboard players get xdcf.z.min int
tp ~16 ~ ~
execute store result score xdcf.x int run data get entity @s Pos[0] 10
execute if score xdcf.x int <= xdcf.x.max int at @s run function xdcf:loop_x
