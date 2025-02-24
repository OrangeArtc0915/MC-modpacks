title @s times 1 1 0
summon area_effect_cloud ^1 ^ ^ {Tags:["tmp"],CustomName:'{"text":"←","color":"yellow","bold":"true"}'}
summon area_effect_cloud ^-1 ^ ^ {Tags:["tmp"],CustomName:'{"text":"→","color":"yellow","bold":"true"}'}
execute at @e[tag=target,limit=1,sort=nearest] run tag @e[tag=tmp,limit=1,sort=nearest] add tmp1
title @s title {"nbt":"CustomName","interpret":"true","entity":"@e[tag=tmp1,limit=1]"}
kill @e[tag=tmp]