tag @s add no_beam
execute store result entity @s BeamTarget.X int 1 run data get entity @s Pos[0]
execute store result score temp int run data get entity @s Pos[1]
execute store result entity @s BeamTarget.Y int 1 run scoreboard players remove temp int 2
execute store result entity @s BeamTarget.Z int 1 run data get entity @s Pos[2]