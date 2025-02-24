data modify block 0 0 0 Items[0].tag.ctmp set value {type:"up_tower",target:1,input:13,chance:30}
execute store result block 0 0 0 Items[0].tag.ctmp.target int 1 run scoreboard players get @s int
execute if score tower_13 int matches 1 if score coin int matches 230.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp