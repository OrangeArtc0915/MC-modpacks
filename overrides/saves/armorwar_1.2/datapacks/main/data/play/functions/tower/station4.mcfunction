execute facing entity @e[tag=tower_editing,limit=1] feet rotated ~ 0.0 positioned 0.0 0.0 0.0 rotated as @a[tag=decision_maker,limit=1] rotated ~ 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^1.0
execute store result score tempi int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
execute store result score tempj int run data get entity @e[tag=math_marker,limit=1] Pos[1] 1000
execute store result score tempk int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000
scoreboard players operation tempi int *= @e[tag=tower_editing,limit=1] radius
scoreboard players operation tempj int *= @e[tag=tower_editing,limit=1] radius
scoreboard players operation tempk int *= @e[tag=tower_editing,limit=1] radius
scoreboard players operation tempi int /= 10 int
scoreboard players operation tempj int /= 10 int
scoreboard players operation tempk int /= 10 int
execute store result score tempx0 int run data get entity @e[tag=tower_editing,limit=1] Pos[0] 1000
execute store result score tempy0 int run data get entity @e[tag=tower_editing,limit=1] Pos[1] 1000
execute store result score tempz0 int run data get entity @e[tag=tower_editing,limit=1] Pos[2] 1000
scoreboard players operation tempx0 int += tempi int
scoreboard players operation tempy0 int += tempj int
scoreboard players operation tempz0 int += tempk int
execute as @e[tag=math_marker,limit=1] run function play:tower/station2