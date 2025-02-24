data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.tree
execute store success score result int run data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.tree1
execute if score result int matches 1 run function tree:updata/clear
data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.tree
function tree:updata/aec
execute if score result int matches 1 run tag @e[tag=result] add tree_block