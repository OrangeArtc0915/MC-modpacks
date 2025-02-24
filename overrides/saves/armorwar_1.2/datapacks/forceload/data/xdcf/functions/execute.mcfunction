execute store result entity @s Pos[0] double 0.1 run scoreboard players get xdcf.x.min int
execute store result entity @s Pos[2] double 0.1 run scoreboard players get xdcf.z.min int

execute at @s run function xdcf:loop_x

kill @s