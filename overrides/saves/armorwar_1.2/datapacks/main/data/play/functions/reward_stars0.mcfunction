data modify block 0 0 0 Items[0].tag.ctmp prepend from block 0 0 0 Items[0].tag.stars[0]
data remove block 0 0 0 Items[0].tag.stars[0]
scoreboard players add loop int 1
execute if score loop int < star_index int run function play:reward_stars0