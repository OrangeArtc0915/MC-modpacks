execute if score @s making matches 0 store result block 0 0 0 Items[0].tag.making[0].g_hp int 1 run scoreboard players operation temp int = @s input
execute if score @s making matches 1 store result block 0 0 0 Items[0].tag.making[1].g_hp int 1 run scoreboard players operation temp int = @s input
execute if score @s making matches 2 store result block 0 0 0 Items[0].tag.making[2].g_hp int 1 run scoreboard players operation temp int = @s input
execute if score @s making matches 3 store result block 0 0 0 Items[0].tag.making[3].g_hp int 1 run scoreboard players operation temp int = @s input
execute if score @s making matches 4 store result block 0 0 0 Items[0].tag.making[4].g_hp int 1 run scoreboard players operation temp int = @s input
execute if score @s making matches 5 store result block 0 0 0 Items[0].tag.making[5].g_hp int 1 run scoreboard players operation temp int = @s input
execute if score @s making matches 6 store result block 0 0 0 Items[0].tag.making[6].g_hp int 1 run scoreboard players operation temp int = @s input
execute as @e[tag=map_ghp_upd,limit=1,sort=nearest] run function main:develop/gener/g_hp1
scoreboard players reset @s input