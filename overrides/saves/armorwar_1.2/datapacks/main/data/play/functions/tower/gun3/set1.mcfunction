scoreboard players set @s value 986
scoreboard players set @s missile_count 0
tag @s add have_soldier

function play:tower/data/get
data modify block 0 0 0 Items[0].tag.tower_data.pofs set value []
execute at @s as @e[tag=map_path,distance=..24.8,limit=12] run data modify block 0 0 0 Items[0].tag.tower_data.pofs append from entity @s Pos
execute store result score @s pof_count if entity @e[tag=map_path,distance=..24.8,limit=12]
function play:tower/data/store