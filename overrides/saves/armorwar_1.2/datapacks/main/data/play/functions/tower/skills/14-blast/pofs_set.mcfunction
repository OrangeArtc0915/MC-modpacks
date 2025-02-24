data modify block 0 0 0 Items[0].tag.tower_data.pofs set value []
execute as @e[tag=tower_tmp] run data modify block 0 0 0 Items[0].tag.tower_data.pofs append from entity @s Pos
function play:tower/data/store