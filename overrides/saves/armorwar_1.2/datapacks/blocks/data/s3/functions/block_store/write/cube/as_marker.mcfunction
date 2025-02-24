execute store result entity @s Pos[0] double 1 run scoreboard players get x0 int
execute store result entity @s Pos[1] double 1 run scoreboard players get y0 int
execute store result entity @s Pos[2] double 1 run scoreboard players get z0 int
scoreboard players operation dy tmp = dy int
# say m
execute at @s run function s3:block_store/write/cube/y_loop

tag @s remove tmp
kill @s