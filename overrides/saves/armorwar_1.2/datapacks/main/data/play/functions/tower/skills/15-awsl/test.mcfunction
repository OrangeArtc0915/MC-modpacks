execute at @s run tag @e[tag=monster,distance=..20.0,limit=1,sort=random] add tmp
execute at @s positioned ~2.0 ~11.0 ~2.0 unless block ~ ~ ~ skeleton_skull run function play:tower/skills/15-awsl/skull
scoreboard players set temp4 int 0
scoreboard players operation temp4 int = @e[tag=tmp,limit=1] hp
execute if entity @e[tag=tmp,limit=1,tag=boss] run scoreboard players add temp4 int 1490
execute if score temp4 int matches 1500.. at @s positioned ~ ~3 ~ run function play:tower/skills/15-awsl/summon
tag @e remove tmp