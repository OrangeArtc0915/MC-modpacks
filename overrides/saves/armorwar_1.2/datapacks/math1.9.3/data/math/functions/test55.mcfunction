summon area_effect_cloud 0.0 10.0 5.0 {Tags:["tmp"],Rotation:[0.0f,45.0f]}
scoreboard players set y int 50000
execute at @e[tag=tmp,limit=1] run function math:l_p-cross
kill @e[tag=tmp]