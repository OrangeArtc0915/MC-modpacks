data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.tree3[0].name
execute store success score result int run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.playing.tag.name
execute if score result int matches 0 run function play:chal/start