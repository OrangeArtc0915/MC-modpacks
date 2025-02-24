data modify block 0 0 0 Items[0].tag.ctmp1 set from block 0 0 0 Items[0].tag.ctmp[0]
execute store result score result int run data modify block 0 0 0 Items[0].tag.ctmp1 set from block 0 0 0 Items[0].tag.playing.tag.name
execute if score result int matches 0 run scoreboard players operation star_index int = loop int
execute if score result int matches 0 run scoreboard players set played int 1

scoreboard players add loop int 1
data remove block 0 0 0 Items[0].tag.ctmp[0]
execute if score loop int < temp int run function play:played_test