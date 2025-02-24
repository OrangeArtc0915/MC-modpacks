execute if score @s making matches 0 store result block 0 0 0 Items[0].tag.making[0].coin int 1 run scoreboard players get @s coin
execute if score @s making matches 1 store result block 0 0 0 Items[0].tag.making[1].coin int 1 run scoreboard players get @s coin
execute if score @s making matches 2 store result block 0 0 0 Items[0].tag.making[2].coin int 1 run scoreboard players get @s coin
execute if score @s making matches 3 store result block 0 0 0 Items[0].tag.making[3].coin int 1 run scoreboard players get @s coin
execute if score @s making matches 4 store result block 0 0 0 Items[0].tag.making[4].coin int 1 run scoreboard players get @s coin
execute if score @s making matches 5 store result block 0 0 0 Items[0].tag.making[5].coin int 1 run scoreboard players get @s coin
execute if score @s making matches 6 store result block 0 0 0 Items[0].tag.making[6].coin int 1 run scoreboard players get @s coin
tellraw @a[tag=developing] [{"selector":"@s","color":"gray"},{"text":"将项目"},{"score":{"name":"@s","objective":"making"}},{"text":"初始金币设置为"},{"score":{"name":"@s","objective":"coin"}}]
scoreboard players reset @s coin