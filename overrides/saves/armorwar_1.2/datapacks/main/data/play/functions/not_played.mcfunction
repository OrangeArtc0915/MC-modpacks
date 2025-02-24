execute store result score star_index int run data get block 0 0 0 Items[0].tag.played
data modify block 0 0 0 Items[0].tag.played append from block 0 0 0 Items[0].tag.playing.tag.name
data modify block 0 0 0 Items[0].tag.stars append value 0