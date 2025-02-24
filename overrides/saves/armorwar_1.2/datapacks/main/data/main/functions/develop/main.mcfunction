scoreboard players enable @a map_x
scoreboard players enable @a map_y
scoreboard players enable @a map_z
scoreboard players enable @a coin
scoreboard players enable @a wave_time
scoreboard players enable @a input

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{item:"map_edit"}}]}] if data entity @s SelectedItem.id run function main:develop/add1
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{item:"develop_gener"}}]}] run function main:develop/rotation

execute as @e[tag=map_dpath,tag=!map_pathed] at @s run function main:develop/path/add
execute as @e[tag=map_end,tag=!map_ended] at @s run function main:develop/end/add
execute as @e[tag=map_tower,tag=!map_towered] at @s run function main:develop/tower/add
execute as @e[tag=map_spoint,tag=!map_spointed] at @s run function main:develop/spoint/add

execute as @a[tag=developing,scores={coin=1..}] run function main:develop/coin

execute as @e[tag=map_gener] at @s run function main:develop/gener/cre
execute if entity @e[tag=waves_show] run function main:develop/gener/waves/show

execute unless entity @a[tag=developing] run function main:develop/end

execute if entity @a[tag=develop_mobs] positioned 1109.5 115 731.5 run function main:develop/mobs/main

scoreboard players add developer_tick int 1
execute if score developer_tick int matches 20.. run function main:develop/main1

execute as @e[tag=map_mob_display] at @s anchored eyes facing entity @p eyes run tp @s ~ ~ ~ ~ ~