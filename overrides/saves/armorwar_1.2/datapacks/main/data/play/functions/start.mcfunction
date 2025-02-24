scoreboard players reset @a dmshift
scoreboard players set req_test int 1
execute if data block 0 0 0 Items[0].tag.map-selected.req run function play:req
execute if score gaming1 int matches 1 run function play:start-f
execute unless score gaming1 int matches 1 if score req_test int matches 1 run function play:start-s
execute unless score gaming1 int matches 1 if score req_test int matches 0 run function play:req_f