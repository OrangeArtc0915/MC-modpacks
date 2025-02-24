kill @e[tag=tower_tmp]
function play:tower/data/get
execute store result score temp int run data get block 0 0 0 Items[0].tag.tower_data.pofs
execute if score temp int matches 1.. run summon area_effect_cloud 0 11 0 {Tags:["tower_tmp","tower_tmp0"]}
execute if score temp int matches 2.. run summon area_effect_cloud 0 11 0 {Tags:["tower_tmp","tower_tmp1"]}
execute if score temp int matches 3.. run summon area_effect_cloud 0 11 0 {Tags:["tower_tmp","tower_tmp2"]}
execute if score temp int matches 4.. run summon area_effect_cloud 0 11 0 {Tags:["tower_tmp","tower_tmp3"]}
execute if score temp int matches 5.. run summon area_effect_cloud 0 11 0 {Tags:["tower_tmp","tower_tmp4"]}
execute if score temp int matches 6.. run summon area_effect_cloud 0 11 0 {Tags:["tower_tmp","tower_tmp5"]}
execute if score temp int matches 7.. run summon area_effect_cloud 0 11 0 {Tags:["tower_tmp","tower_tmp6"]}
execute if score temp int matches 8.. run summon area_effect_cloud 0 11 0 {Tags:["tower_tmp","tower_tmp7"]}
execute if score temp int matches 9.. run summon area_effect_cloud 0 11 0 {Tags:["tower_tmp","tower_tmp8"]}
execute if score temp int matches 10.. run summon area_effect_cloud 0 11 0 {Tags:["tower_tmp","tower_tmp9"]}
execute if score temp int matches 11.. run summon area_effect_cloud 0 11 0 {Tags:["tower_tmp","tower_tmp10"]}
execute if score temp int matches 12.. run summon area_effect_cloud 0 11 0 {Tags:["tower_tmp","tower_tmp11"]}
data modify entity @e[tag=tower_tmp0,limit=1] Pos set from block 0 0 0 Items[0].tag.tower_data.pofs[0]
data modify entity @e[tag=tower_tmp1,limit=1] Pos set from block 0 0 0 Items[0].tag.tower_data.pofs[1]
data modify entity @e[tag=tower_tmp2,limit=1] Pos set from block 0 0 0 Items[0].tag.tower_data.pofs[2]
data modify entity @e[tag=tower_tmp3,limit=1] Pos set from block 0 0 0 Items[0].tag.tower_data.pofs[3]
data modify entity @e[tag=tower_tmp4,limit=1] Pos set from block 0 0 0 Items[0].tag.tower_data.pofs[4]
data modify entity @e[tag=tower_tmp5,limit=1] Pos set from block 0 0 0 Items[0].tag.tower_data.pofs[5]
data modify entity @e[tag=tower_tmp6,limit=1] Pos set from block 0 0 0 Items[0].tag.tower_data.pofs[6]
data modify entity @e[tag=tower_tmp7,limit=1] Pos set from block 0 0 0 Items[0].tag.tower_data.pofs[7]
data modify entity @e[tag=tower_tmp8,limit=1] Pos set from block 0 0 0 Items[0].tag.tower_data.pofs[8]
data modify entity @e[tag=tower_tmp9,limit=1] Pos set from block 0 0 0 Items[0].tag.tower_data.pofs[9]
data modify entity @e[tag=tower_tmp10,limit=1] Pos set from block 0 0 0 Items[0].tag.tower_data.pofs[10]
data modify entity @e[tag=tower_tmp11,limit=1] Pos set from block 0 0 0 Items[0].tag.tower_data.pofs[11]