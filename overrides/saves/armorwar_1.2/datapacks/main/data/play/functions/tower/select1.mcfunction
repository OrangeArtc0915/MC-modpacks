tag @s add tmp1
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp"]}
execute as @e[tag=tmp] run function play:tower/tp
tag @s remove tmp1
kill @e[tag=tmp]

scoreboard players operation temp int = @s dmshift1
scoreboard players operation temp int -= @s dmshift
execute if score temp int matches 0 run function play:tower/unselect
scoreboard players operation @s dmshift1 = @s dmshift

execute if score @s dmshift matches 5.. run function play:tower/select2