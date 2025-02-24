execute store result score tempx int run data get entity @s Pos[0] 10000
execute store result score tempy int run data get entity @s Pos[1] 10000
execute store result score tempz int run data get entity @s Pos[2] 10000

execute if score tempx int = @s healx if score tempy int = @s healy if score tempz int = @s healz run function play:hr/heal