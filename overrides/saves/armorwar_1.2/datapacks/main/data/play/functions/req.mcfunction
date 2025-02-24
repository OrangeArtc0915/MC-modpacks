scoreboard players set req_test int 0
execute store result score temp int run data get block 0 0 0 Items[0].tag.played
data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.played
execute if score temp int matches 1.. run function play:req_loop