scoreboard players remove temp1 int 1
data remove block 0 0 0 Items[0].tag.ttmp[0]
execute if score temp1 int matches 1.. run function play:tower/build/loop