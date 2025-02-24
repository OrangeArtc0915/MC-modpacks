function math:random

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp2","magic_ray_d","result"],Duration:1}
scoreboard players operation @e[tag=tmp2,limit=1] int = #puid puid
execute as @e[tag=tmp2,limit=1] run function play:tower/skills/15-ray/pos
tag @e remove tmp2

scoreboard players remove loop int 1
execute if score loop int matches 1.. run function play:tower/skills/15-ray/loop