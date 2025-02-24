scoreboard players operation temp int = @s int
execute as @e[tag=soldier_point] if score @s int = temp int run tag @s add tmp33

execute if score @s soldier_sort matches 1 at @e[tag=tmp33,limit=1] positioned ^ ^ ^1.5 run function play:sold/reach1
execute if score @s soldier_sort matches 2 at @e[tag=tmp33,limit=1] positioned ^1.53 ^ ^-1 rotated ~-30.0 ~ run function play:sold/reach1
execute if score @s soldier_sort matches 3 at @e[tag=tmp33,limit=1] positioned ^-1.53 ^ ^-1 rotated ~30.0 ~ run function play:sold/reach1

tag @e remove tmp33