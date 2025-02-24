execute store result score temp7 int run data get block 0 0 0 Items[0].tag.map_levels[0].locked
execute if score temp7 int matches 0 run function maps:summon_level1
data remove block 0 0 0 Items[0].tag.map_levels[0]