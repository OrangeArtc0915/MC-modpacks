tag @e remove result
scoreboard players operation temp int = @s target
execute as @e[tag=map_tower] if score @s int = temp int run tag @s add result

scoreboard players operation skill_0 int = @e[tag=result,limit=1] skill_0
scoreboard players operation skill_1 int = @e[tag=result,limit=1] skill_1
scoreboard players operation skill_2 int = @e[tag=result,limit=1] skill_2

execute if score @s input matches 130 as @e[tag=result,limit=1] run function play:tower/skills/13-up0
execute if score @s input matches 131 as @e[tag=result,limit=1] run function play:tower/skills/13-up1
execute if score @s input matches 140 as @e[tag=result,limit=1] run function play:tower/skills/14-up0
execute if score @s input matches 141 as @e[tag=result,limit=1] run function play:tower/skills/14-up1
execute if score @s input matches 150 as @e[tag=result,limit=1] run function play:tower/skills/15-up0
execute if score @s input matches 151 as @e[tag=result,limit=1] run function play:tower/skills/15-up1
execute if score @s input matches 160 as @e[tag=result,limit=1] run function play:tower/skills/16-up0
execute if score @s input matches 161 as @e[tag=result,limit=1] run function play:tower/skills/16-up1
execute if score @s input matches 162 as @e[tag=result,limit=1] run function play:tower/skills/16-up2