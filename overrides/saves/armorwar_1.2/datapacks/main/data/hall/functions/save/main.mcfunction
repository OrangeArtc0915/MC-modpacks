execute unless entity @e[tag=save_set] run function hall:save/summon
tag @s add tmp
execute as @e[tag=save_set1,nbt=!{Health:20.0f}] run function hall:save/out
tag @s remove tmp
execute as @e[tag=save_set1] run data modify entity @s Health set value 20.0f

execute positioned 180 49 29 if data block ~ ~ ~ RecordItem run function hall:save/load