tag @e[tag=map_path,limit=1,sort=random] add tmp

execute at @e[tag=tmp,limit=1] run tp @s ~ ~10.0 ~ ~ 90.0
execute at @e[tag=tmp,limit=1] at @e[tag=monster,limit=1,sort=nearest] run tp @s ~ ~10.0 ~ ~ 90.0

tag @e remove tmp

execute at @s run function play:skills/firerain/test