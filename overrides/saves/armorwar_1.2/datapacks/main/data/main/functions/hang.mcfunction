summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp","tmp1"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp","tmp2"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp","tmp3"]}
tag @e[tag=tmp,limit=1,sort=random] add tmpp
execute if entity @e[tag=tmpp,tag=tmp1] run function main:hang/1
execute if entity @e[tag=tmpp,tag=tmp2] run function main:hang/2
execute if entity @e[tag=tmpp,tag=tmp3] run function main:hang/3
scoreboard players reset @s afk
kill @e[tag=tmp]