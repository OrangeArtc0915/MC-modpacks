tp @e[tag=math_marker,limit=1] ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^ facing entity @e[tag=math_marker,limit=1] feet run tp @e[tag=math_marker,limit=1] ~ ~ ~ ~ ~

execute store result score rotation_0 int run data get entity @e[tag=math_marker,limit=1] Rotation[0] 10000
execute store result score temp int run data get entity @s Rotation[0] 10000
scoreboard players operation rotation_0 int -= temp int
scoreboard players operation @s rotation_0 += rotation_0 int

execute store result score rotation_1 int run data get entity @e[tag=math_marker,limit=1] Rotation[1] 10000
execute store result score temp int run data get entity @s Rotation[1] 10000
scoreboard players operation rotation_1 int -= temp int
scoreboard players operation @s rotation_1 += rotation_1 int

execute if entity @s[tag=rigid_mo] unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.01f,0.0f,0.0f]
execute if entity @s[tag=rigid_mo] run data modify entity @s Rotation set from entity @e[tag=math_marker,limit=1] Rotation
execute if entity @s[tag=rigid_mo] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
execute if entity @s[tag=rigid_mo] run scoreboard players set @s rigid_move 1

function rigid:link/move