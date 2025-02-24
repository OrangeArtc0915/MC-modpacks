tp @e[tag=tmp2,limit=1] ~ ~-0.9 ~ ~ ~
execute as @e[tag=tmp2,limit=1] run data modify entity @s Pose.Head set value [0.0f,0.0f,0.001f]
execute as @e[tag=tmp2,limit=1] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
execute as @e[tag=tmp2,limit=1] at @s if block ~ ~0.3 ~ #minecraft:slabs[type=top] run tp @s ~ ~0.54 ~

execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^3.5 {Tags:["stmp0"]}
execute as @e[tag=stmp0,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

execute positioned ^ ^ ^0.1 run summon area_effect_cloud ~ ~ ~ {Tags:["arrow0","tmp9"],Duration:8}
data modify entity @e[tag=tmp9,limit=1] Rotation set from entity @e[tag=tmp2,limit=1] Rotation
tag @e remove tmp9
kill @e[tag=stmp0]