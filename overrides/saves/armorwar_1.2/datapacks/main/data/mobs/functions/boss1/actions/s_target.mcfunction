execute at @s run tag @e[tag=!dead,tag=soldier,distance=..10.0,limit=1,sort=random] add tmp

scoreboard players operation @s target = @e[tag=tmp,limit=1] muid

execute at @s facing entity @e[tag=tmp,limit=1] feet rotated ~ 0.0 run tp @s ~ ~ ~ ~ ~
scoreboard players set @s rigid_move 1

tag @e remove tmp