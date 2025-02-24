execute store result score x0 int run data get entity @s Pos[0]
execute store result score y0 int run data get entity @s Pos[1]
execute store result score z0 int run data get entity @s Pos[2]
tellraw @a [{"text": "coner0: "},{"score": {"name": "x0","objective": "int"}},", ",{"score": {"name": "y0","objective": "int"}},", ",{"score": {"name": "z0","objective": "int"}}]