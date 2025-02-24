summon area_effect_cloud ~ ~ ~ {Tags:["block_reserve","stmp"],Duration:2147483647}
execute as @e[tag=stmp,limit=1] run function block_reserve:clone0
tag @e remove stmp