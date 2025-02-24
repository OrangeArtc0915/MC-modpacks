tag @e[tag=map_path,limit=1,sort=nearest] add tmp
execute at @e[tag=tmp,limit=1] run tp @s ~ ~1 ~
tag @e remove tmp