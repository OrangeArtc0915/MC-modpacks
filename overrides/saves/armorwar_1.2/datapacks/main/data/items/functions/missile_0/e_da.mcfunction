execute store result score tempx0 int run data get entity @s Pos[0] 1000
execute store result score tempy0 int run data get entity @s Pos[1] 1000
execute store result score tempz0 int run data get entity @s Pos[2] 1000

scoreboard players operation tempx0 int -= tempx int
scoreboard players operation tempy0 int -= tempy int
scoreboard players operation tempz0 int -= tempz int

scoreboard players operation tempx0 int *= tempx0 int
scoreboard players operation tempy0 int *= tempy0 int
scoreboard players operation tempz0 int *= tempz0 int

scoreboard players operation tempx0 int += tempy0 int
scoreboard players operation tempx0 int += tempz0 int

scoreboard players operation temp int = @e[tag=tmp,limit=1] explode_r

scoreboard players operation temp int *= 1000000 int

scoreboard players operation tempx0 int > 1500000 int
execute if score tempx0 int < temp int run function items:missile_0/e_da1