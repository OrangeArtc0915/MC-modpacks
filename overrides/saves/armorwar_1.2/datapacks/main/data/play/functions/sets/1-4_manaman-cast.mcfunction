scoreboard players remove @s CD 1
execute if score @s CD matches ..0 run scoreboard players set @s skill_0 0

scoreboard players operation temp int = @s target
execute at @s as @e[tag=monster,distance=..20.0] if score @s muid = temp int run tag @s add tmp

execute unless entity @e[tag=tmp] run function play:sets/1-4_manaman-find
execute if entity @e[tag=tmp] run function play:sets/1-4_manaman-att

tag @e remove tmp