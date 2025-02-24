scoreboard players set temp int -1
execute if data block 0 0 0 Items[0].tag.making[0].id run scoreboard players set temp int 0
execute if data block 0 0 0 Items[0].tag.making[1].id run scoreboard players set temp int 1
execute if data block 0 0 0 Items[0].tag.making[2].id run scoreboard players set temp int 2
execute if data block 0 0 0 Items[0].tag.making[3].id run scoreboard players set temp int 3
execute if data block 0 0 0 Items[0].tag.making[4].id run scoreboard players set temp int 4
execute if data block 0 0 0 Items[0].tag.making[5].id run scoreboard players set temp int 5
execute if data block 0 0 0 Items[0].tag.making[6].id run scoreboard players set temp int 6

summon item 1003.5 52 997.5 {Item:{id:"minecraft:zombie_spawn_egg",Count:1b,tag:{cd:8,run_command:"execute as @a[tag=cbutton] run function main:develop/mobs/open"}},Tags:["button","mpar_custom","mpar_end_rod","cank","button_mopen","button_dhall"],PickupDelay:32767s,NoGravity:true,CustomName:"\"打开怪物编辑器\"",CustomNameVisible:true}

summon item 1004.5 52 1001.5 {Item:{id:"minecraft:glass",Count:1b,tag:{cd:8,run_command:"execute as @e[tag=cbutton,tag=developer] run function main:develop/add"}},Tags:["button","mpar_custom","mpar_end_rod","cank","button_dadd","button_dhall"],PickupDelay:32767s,NoGravity:true,CustomName:"\"项目设置\"",CustomNameVisible:true}

summon item 1005.5 52 999.5 {Item:{id:"minecraft:barrier",Count:1b,tag:{cd:8,run_command:"execute as @e[tag=cbutton] run function main:develop/leave"}},Tags:["button","mpar_custom","mpar_end_rod","cank","button_dleave","button_dhall"],PickupDelay:32767s,NoGravity:true,CustomName:"\"回到大厅\"",CustomNameVisible:true}

execute if score temp int matches 0.. run summon item 1003.5 52 1001.5 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp","button","mpar_custom","mpar_end_rod","cank","button_d0","button_dhall"],PickupDelay:32767s,NoGravity:true,CustomName:'{"text":""}',CustomNameVisible:true}
data modify entity @e[tag=tmp,limit=1] Item set from block 0 0 0 Items[0].tag.making[0]
data modify entity @e[tag=tmp,limit=1] Item.tag merge value {cd:8,run_command:"execute as @e[tag=cbutton,tag=developer] run function main:develop/d0"}
data modify entity @e[tag=tmp,limit=1] CustomName set from block 0 0 0 Items[0].tag.making[0].tag.display.Name
tag @e remove tmp

execute if score temp int matches 1.. run summon item 1002.5 52 1001.5 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp","button","mpar_custom","mpar_end_rod","cank","button_d1","button_dhall"],PickupDelay:32767s,NoGravity:true,CustomName:'{"text":""}',CustomNameVisible:true}
data modify entity @e[tag=tmp,limit=1] Item set from block 0 0 0 Items[0].tag.making[1]
data modify entity @e[tag=tmp,limit=1] Item.tag merge value {cd:8,run_command:"execute as @e[tag=cbutton,tag=developer] run function main:develop/d1"}
data modify entity @e[tag=tmp,limit=1] CustomName set from block 0 0 0 Items[0].tag.making[1].tag.display.Name
tag @e remove tmp

execute if score temp int matches 2.. run summon item 1001.5 52 1001.5 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp","button","mpar_custom","mpar_end_rod","cank","button_d2","button_dhall"],PickupDelay:32767s,NoGravity:true,CustomName:'{"text":""}',CustomNameVisible:true}
data modify entity @e[tag=tmp,limit=1] Item set from block 0 0 0 Items[0].tag.making[2]
data modify entity @e[tag=tmp,limit=1] Item.tag merge value {cd:8,run_command:"execute as @e[tag=cbutton,tag=developer] run function main:develop/d2"}
data modify entity @e[tag=tmp,limit=1] CustomName set from block 0 0 0 Items[0].tag.making[2].tag.display.Name
tag @e remove tmp

execute if score temp int matches 3.. run summon item 1000.5 52 1001.5 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp","button","mpar_custom","mpar_end_rod","cank","button_d3","button_dhall"],PickupDelay:32767s,NoGravity:true,CustomName:'{"text":""}',CustomNameVisible:true}
data modify entity @e[tag=tmp,limit=1] Item set from block 0 0 0 Items[0].tag.making[3]
data modify entity @e[tag=tmp,limit=1] Item.tag merge value {cd:8,run_command:"execute as @e[tag=cbutton,tag=developer] run function main:develop/d3"}
data modify entity @e[tag=tmp,limit=1] CustomName set from block 0 0 0 Items[0].tag.making[3].tag.display.Name
tag @e remove tmp

execute if score temp int matches 4.. run summon item 999.5 52 1001.5 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp","button","mpar_custom","mpar_end_rod","cank","button_d4","button_dhall"],PickupDelay:32767s,NoGravity:true,CustomName:'{"text":""}',CustomNameVisible:true}
data modify entity @e[tag=tmp,limit=1] Item set from block 0 0 0 Items[0].tag.making[4]
data modify entity @e[tag=tmp,limit=1] Item.tag merge value {cd:8,run_command:"execute as @e[tag=cbutton,tag=developer] run function main:develop/d4"}
data modify entity @e[tag=tmp,limit=1] CustomName set from block 0 0 0 Items[0].tag.making[4].tag.display.Name
tag @e remove tmp

execute if score temp int matches 5.. run summon item 998.5 52 1001.5 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp","button","mpar_custom","mpar_end_rod","cank","button_d5","button_dhall"],PickupDelay:32767s,NoGravity:true,CustomName:'{"text":""}',CustomNameVisible:true}
data modify entity @e[tag=tmp,limit=1] Item set from block 0 0 0 Items[0].tag.making[5]
data modify entity @e[tag=tmp,limit=1] Item.tag merge value {cd:8,run_command:"execute as @e[tag=cbutton,tag=developer] run function main:develop/d5"}
data modify entity @e[tag=tmp,limit=1] CustomName set from block 0 0 0 Items[0].tag.making[5].tag.display.Name
tag @e remove tmp

execute if score temp int matches 6.. run summon item 997.5 52 1001.5 {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp","button","mpar_custom","mpar_end_rod","cank","button_d6","button_dhall"],PickupDelay:32767s,NoGravity:true,CustomName:'{"text":""}',CustomNameVisible:true}
data modify entity @e[tag=tmp,limit=1] Item set from block 0 0 0 Items[0].tag.making[6]
data modify entity @e[tag=tmp,limit=1] Item.tag merge value {cd:8,run_command:"execute as @e[tag=cbutton,tag=developer] run function main:develop/d6"}
data modify entity @e[tag=tmp,limit=1] CustomName set from block 0 0 0 Items[0].tag.making[6].tag.display.Name
tag @e remove tmp


scoreboard players set developing int 1