execute at @s run summon creeper ~ ~512 ~ {Tags:["tmp"],Fuse:0,ExplosionPower:1}
execute at @s run tp @e[tag=tmp,limit=1] ~ ~ ~
tag @e remove tmp
tag @s add tmp
execute store result score tempx int run data get entity @s Pos[0] 1000
execute store result score tempy int run data get entity @s Pos[1] 1000
execute store result score tempz int run data get entity @s Pos[2] 1000
execute at @s as @e[tag=monster,distance=..18.0] run function items:missile_0/e_da
tag @s remove tmp

kill @s