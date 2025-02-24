function math:3get-length
scoreboard players operation result int /= 1000 int
execute if score result int >= @s rat_dis run scoreboard players set success int 0