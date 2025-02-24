execute store result score target_x shthVar run data get entity @s Pos[0] 1000
execute store result score target_y shthVar run data get entity @s Pos[1] 1000
execute store result score target_z shthVar run data get entity @s Pos[2] 1000
execute at @s positioned 0.0 0.0 0.0 run tp @e[tag=math_marker] ^ ^ ^1.0
execute store result score tempx int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
execute store result score tempy int run data get entity @e[tag=math_marker,limit=1] Pos[1] 1000
execute store result score tempz int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000
scoreboard players operation temp int = @s speed
scoreboard players operation temp int *= 150 int
scoreboard players operation tempx int *= temp int
scoreboard players operation tempy int *= temp int
scoreboard players operation tempz int *= temp int
scoreboard players operation tempx int /= 100 int
scoreboard players operation tempy int /= 100 int
scoreboard players operation tempz int /= 100 int
scoreboard players operation target_x shthVar += tempx int
scoreboard players operation target_y shthVar += tempy int
scoreboard players operation target_z shthVar += tempz int
kill @e[tag=tmp2]