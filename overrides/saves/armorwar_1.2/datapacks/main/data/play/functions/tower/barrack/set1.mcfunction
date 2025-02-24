scoreboard players set @s value 70

execute at @s positioned ~0.5 ~1.0 ~0.5 run tag @e[tag=map_path,limit=1,sort=nearest] add tmp

scoreboard players set r int 90
execute at @s positioned ~0.5 ~ ~0.5 run function math:60_radius
execute at @e[tag=tmp,limit=1] run tag @e[tag=result,limit=1,sort=nearest] add tmp1

tag @e[tag=tmp1,limit=1] add soldier_point
tag @e[tag=tmp1,limit=1] add aec
data modify entity @e[tag=tmp1,limit=1] Duration set value 100
scoreboard players operation @e[tag=tmp1,limit=1] int = @s int
execute as @e[tag=tmp1,limit=1] at @s facing entity @e[tag=tmp,limit=1] feet run tp @s ~ ~ ~ ~ 0.0

scoreboard players operation stemp int = @s int
execute as @e[tag=soldier_point,tag=!tmp1] if score @s int = stemp int run kill @e[tag=tmp1,limit=1]

tag @e remove tmp
tag @e remove tmp1

scoreboard players set @s soldier_count 3