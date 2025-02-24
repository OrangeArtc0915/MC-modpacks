tag @e remove result
execute store result score temp int run data get block 0 0 0 Items[0].tag.ctmp
execute if score temp int matches 1.. run function tree:updata/aec_loop