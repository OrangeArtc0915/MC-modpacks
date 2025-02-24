execute store result score tempx int run data get entity @s Pos[0] 10000
execute store result score tempz int run data get entity @s Pos[2] 10000

scoreboard players set min int -50000
scoreboard players set max int 50000
function math:random
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation tempx int += random int

scoreboard players set min int -50000
scoreboard players set max int 50000
function math:random
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation tempz int += random int

execute at @s run summon fireball ~ ~35 ~ {Tags:["tmp"],Motion:[0.0d,-3.0d,0.0d]}
scoreboard players set @e[tag=tmp] killtime 10
tag @e remove tmp

tp @s ~ ~ ~