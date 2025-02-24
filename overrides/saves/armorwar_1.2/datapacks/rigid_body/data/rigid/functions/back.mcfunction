scoreboard players operation @s omega_u *= -1 int
execute store result score temp2 int run data get entity @s Rotation[1]
execute if score temp2 int matches ..-1 run data modify entity @s Rotation[1] set value -90.0f
execute if score temp2 int matches 0.. run data modify entity @s Rotation[1] set value 90.0f