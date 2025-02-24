tag @s add tmp
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp1"]}
execute as @e[tag=tmp1] run function main:develop/enter2
scoreboard players operation @s making = temp int
function main:develop/gener/time1
kill @e[tag=tmp1]
tag @s remove tmp
execute at @s run kill @e[tag=map_point,distance=..500]
function main:develop/point_upd
clear @s
execute at @s run function developer:kits