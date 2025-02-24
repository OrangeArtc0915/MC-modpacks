tag @e[tag=monster,distance=..5.5,limit=1,sort=nearest,tag=!fly_mob] add tmp
scoreboard players operation @s target = @e[tag=tmp,limit=1] muid
scoreboard players operation @e[tag=tmp,limit=1] target = @s muid
execute at @s facing entity @e[tag=tmp,limit=1] eyes run tp @s ~ ~ ~ ~ 0.0
scoreboard players set @s change_approach 5
tag @e remove tmp