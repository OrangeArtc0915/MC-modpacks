execute store result entity @s Pos[0] double 1 run scoreboard players get x int
execute store result entity @s Pos[1] double 1 run scoreboard players get y int
execute store result entity @s Pos[2] double 1 run scoreboard players get z int
execute at @s run function s3:block_store/read/cube/y_loop


tag @s remove tmp
kill @s