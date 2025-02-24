execute if entity @s[tag=no_beam] run tag @s remove no_beam
execute store result entity @s BeamTarget.X int 1 run data get entity @e[tag=tmp,limit=1] Pos[0]
execute store result score temp int run data get entity @e[tag=tmp,limit=1] Pos[1]
execute store result entity @s BeamTarget.Y int 1 run scoreboard players remove temp int 1
execute store result entity @s BeamTarget.Z int 1 run data get entity @e[tag=tmp,limit=1] Pos[2]

scoreboard players operation @e[tag=tmp,limit=1] mdamage += 20 int

execute at @s facing entity @e[tag=tmp,limit=1] eyes run tp @s ~ ~ ~ ~ ~