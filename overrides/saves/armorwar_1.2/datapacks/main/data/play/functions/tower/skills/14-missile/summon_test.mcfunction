scoreboard players operation temp int = @s int
execute as @e[tag=build_model,tag=await] if score @s int = temp int run tag @s add tmp

execute unless entity @e[tag=tmp] if score @s missile_count matches 1.. run function play:tower/skills/14-missile/summon

tag @e remove tmp