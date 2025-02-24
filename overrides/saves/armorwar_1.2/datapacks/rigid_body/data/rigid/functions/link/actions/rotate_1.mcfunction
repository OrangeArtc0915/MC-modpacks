scoreboard players operation @s rotation_1 += theta int
execute store result score temp int run data get entity @s Rotation[1] 10000
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players operation temp int += theta int
execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.01f,0.0f,0.0f]
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]

function rigid:link/move