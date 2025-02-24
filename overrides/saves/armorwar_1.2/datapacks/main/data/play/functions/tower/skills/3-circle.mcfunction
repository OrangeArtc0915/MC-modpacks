scoreboard players operation temp int = @s int
execute as @e[tag=build_model] if score @s int = temp int run tag @s add tmp
execute unless entity @e[tag=tmp] unless entity @e[tag=3-circle] run function play:tower/skills/3-model
tag @e remove tmp