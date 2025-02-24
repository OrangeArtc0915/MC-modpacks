scoreboard players operation temp5 int = @s int
execute as @e[tag=soldier] if score @s int = temp5 int run tag @s add tmp3
execute as @e[tag=tmp3] run function play:sold/reach2
scoreboard players set @e[tag=tmp3] speed 0
scoreboard players set @e[tag=tmp3] change_reach 8
tag @e remove tmp3
execute as @e[tag=soldier_point] if score @s int = temp5 int run tag @s add tmp3
tp @e[tag=tmp3] @e[tag=tmp1,limit=1]
execute as @e[tag=tmp3] at @s facing entity @a[tag=tmp2,limit=1] eyes run tp @s ~ ~ ~ ~180 0.0
tag @e remove tmp3