data modify block 0 0 0 Items[0].tag.ctmp set value {type:"skill_tower",target:1,input:160,chance:60}
execute store result block 0 0 0 Items[0].tag.ctmp.target int 1 run scoreboard players get @s int
execute if score @s skill_0 matches 0 if score coin int matches 150.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp
execute if score @s skill_0 matches 1 if score coin int matches 150.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp
execute if score @s skill_0 matches 2 if score coin int matches 150.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp

data modify block 0 0 0 Items[0].tag.ctmp set value {type:"skill_tower",target:1,input:161,chance:60}
execute store result block 0 0 0 Items[0].tag.ctmp.target int 1 run scoreboard players get @s int
execute if score @s skill_1 matches 0 if score coin int matches 220.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp

data modify block 0 0 0 Items[0].tag.ctmp set value {type:"skill_tower",target:1,input:162,chance:60}
execute store result block 0 0 0 Items[0].tag.ctmp.target int 1 run scoreboard players get @s int
execute if score @s skill_2 matches 0 if score coin int matches 250.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp
execute if score @s skill_2 matches 1 if score coin int matches 150.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp
execute if score @s skill_2 matches 2 if score coin int matches 150.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp