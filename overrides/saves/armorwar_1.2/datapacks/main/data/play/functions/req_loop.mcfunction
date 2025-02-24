data modify block 0 0 0 Items[0].tag.ctmp1 set from block 0 0 0 Items[0].tag.ctmp[0]
execute store result score result int run data modify block 0 0 0 Items[0].tag.ctmp1 set from block 0 0 0 Items[0].tag.map-selected.req
execute if score result int matches 0 run scoreboard players set req_test int 1

scoreboard players remove temp int 1
data remove block 0 0 0 Items[0].tag.ctmp[0]
execute if score temp int matches 1.. run function play:req_loop