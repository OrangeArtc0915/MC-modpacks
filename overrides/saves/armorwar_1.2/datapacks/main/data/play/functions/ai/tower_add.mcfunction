data modify block 0 0 0 Items[0].tag.ctmp set value {type:"new_tower",target:1,input:1,chance:30}
execute store result block 0 0 0 Items[0].tag.ctmp.target int 1 run scoreboard players get @s int
execute if score tower_1 int matches 1 if score coin int matches 70.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp

data modify block 0 0 0 Items[0].tag.ctmp.input set value 2
data modify block 0 0 0 Items[0].tag.ctmp.chance set value 50
execute if score tower_2 int matches 1 if score coin int matches 100.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp

data modify block 0 0 0 Items[0].tag.ctmp.input set value 3
data modify block 0 0 0 Items[0].tag.ctmp.chance set value 40
execute if score tower_3 int matches 1 if score coin int matches 90.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp

data modify block 0 0 0 Items[0].tag.ctmp.input set value 4
data modify block 0 0 0 Items[0].tag.ctmp.chance set value 20
execute if score tower_4 int matches 1 if score coin int matches 70.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp