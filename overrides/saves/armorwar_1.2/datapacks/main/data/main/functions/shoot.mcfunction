function math:eyepos
execute at @e[tag=result] run summon area_effect_cloud ~ ~ ~ {Tags:["tmp","linece","mpar_hred_dust","bullet"],Duration:100}
data modify entity @e[tag=tmp,limit=1] Rotation set from entity @s Rotation
tag @e remove tmp