execute unless score xdcf.remove int matches 1 run forceload add ~8 ~8
execute if score xdcf.remove int matches 1 run forceload remove ~8 ~8
tp ~ ~ ~16
execute store result score xdcf.z int run data get entity @s Pos[2] 10
execute if score xdcf.z int <= xdcf.z.max int at @s run function xdcf:loop_z
