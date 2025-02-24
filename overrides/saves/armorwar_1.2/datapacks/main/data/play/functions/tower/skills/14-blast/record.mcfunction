tp @e[tag=math_marker,limit=1] ~ ~ ~
function play:tower/skills/14-blast/pofs
execute unless entity @e[tag=tower_tmp,distance=..4.5] run data modify block 0 0 0 Items[0].tag.tower_data.pofs append from entity @e[tag=math_marker,limit=1] Pos
execute unless entity @e[tag=tower_tmp,distance=..4.5] run scoreboard players add @s pof_count 1
function play:tower/data/store