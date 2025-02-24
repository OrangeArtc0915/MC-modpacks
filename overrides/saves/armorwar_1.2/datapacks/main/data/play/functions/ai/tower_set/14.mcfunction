data modify block 0 0 0 Items[0].tag.ctmp set value {type:"skill_tower",target:1,input:140,chance:60}
execute store result block 0 0 0 Items[0].tag.ctmp.target int 1 run scoreboard players get @s int
execute if score @s skill_0 matches 0 if score coin int matches 220.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp
execute if score @s skill_0 matches 1 if score coin int matches 180.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp
execute if score @s skill_0 matches 2 if score coin int matches 260.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp

data modify block 0 0 0 Items[0].tag.ctmp set value {type:"skill_tower",target:1,input:141,chance:60}
execute store result block 0 0 0 Items[0].tag.ctmp.target int 1 run scoreboard players get @s int
execute if score @s skill_1 matches 0 if score coin int matches 185.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp
execute if score @s skill_1 matches 1 if score coin int matches 185.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp
execute if score @s skill_1 matches 2 if score coin int matches 185.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp