execute as @e[tag=tmp,limit=1] run function math:3get-length
summon area_effect_cloud 0 11 0 {Tags:["tmp5","mpar_hred_dust","linese","mpar_custom","instant"],Duration:20}
execute facing entity @e[tag=tmp,limit=1] feet run tp @e[tag=tmp5,limit=1] ~ ~ ~ ~ ~
execute store result entity @e[tag=tmp5,limit=1] Motion[0] double 0.0001 run scoreboard players get result int
tag @e remove tmp5