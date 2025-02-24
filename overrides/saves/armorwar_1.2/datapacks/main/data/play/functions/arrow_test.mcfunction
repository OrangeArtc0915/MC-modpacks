data modify entity @e[tag=math_marker,limit=1] Pos set from entity @s Motion
execute as @e[tag=math_marker,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~

tp @e[tag=math_marker,limit=1] ~ ~ ~

execute at @e[tag=math_marker,limit=1] run function play:arrow_test1

execute as @e[tag=monster,distance=..7.0] at @s at @e[tag=tmp,limit=1,sort=nearest] run function play:hit_test1

kill @e[tag=tmp,type=area_effect_cloud]

tag @s add tmp

scoreboard players operation arrow_type int = @s type
execute as @e[tag=monster,distance=..7.0,limit=1,sort=nearest,scores={result=1}] run function play:mon/arrow_damage

tag @s remove tmp