tp @e[tag=math_marker,limit=1] ^ ^ ^1.0
execute store result score tempx int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
execute store result score tempy int run data get entity @e[tag=math_marker,limit=1] Pos[1] 1000
execute store result score tempz int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000

scoreboard players operation tempx int *= u0 int
scoreboard players operation tempz int *= u2 int
scoreboard players operation tempx int += tempz int
scoreboard players operation tempx int /= 10000 int
scoreboard players operation tempx int *= tempy int

execute if score tempx int < 0 int run scoreboard players set result int 1