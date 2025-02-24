data modify block 0 0 0 Items[0].tag.ctmp set value {type:"up_tower",target:1,input:10,chance:50}
execute store result block 0 0 0 Items[0].tag.ctmp.target int 1 run scoreboard players get @s int
execute if score tower_10 int matches 1 if score coin int matches 288.. run data modify block 0 0 0 Items[0].tag.ai_pool append from block 0 0 0 Items[0].tag.ctmp