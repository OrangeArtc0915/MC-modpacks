scoreboard players set temp int 8900000
scoreboard players operation temp1 int = lib_tower_p0 int
scoreboard players operation temp1 int *= 10 int
scoreboard players operation temp int += temp1 int
execute store result entity @e[tag=dsp_tower,limit=1] Item.tag.CustomModelData int 1 run scoreboard players operation temp int += lib_tower_p1 int

execute if score lib_tower_p0 int matches 1 run data modify entity @e[tag=lib_tower_type,limit=1] CustomName set value '{"text":"箭塔"}'
execute if score lib_tower_p0 int matches 2 run data modify entity @e[tag=lib_tower_type,limit=1] CustomName set value '{"text":"炮塔"}'
execute if score lib_tower_p0 int matches 3 run data modify entity @e[tag=lib_tower_type,limit=1] CustomName set value '{"text":"法塔"}'
execute if score lib_tower_p0 int matches 4 run data modify entity @e[tag=lib_tower_type,limit=1] CustomName set value '{"text":"兵营"}'

execute if score lib_tower_p1 int matches 0 run data modify entity @e[tag=lib_tower_rank,limit=1] CustomName set value '{"text":"一级"}'
execute if score lib_tower_p1 int matches 1 run data modify entity @e[tag=lib_tower_rank,limit=1] CustomName set value '{"text":"二级"}'
execute if score lib_tower_p1 int matches 2 run data modify entity @e[tag=lib_tower_rank,limit=1] CustomName set value '{"text":"三级"}'
execute if score lib_tower_p1 int matches 3 run data modify entity @e[tag=lib_tower_rank,limit=1] CustomName set value '{"text":"四级"}'

data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.tower_pages
scoreboard players operation loop int = lib_tower_p0 int
scoreboard players remove loop int 1
scoreboard players operation temp int = lib_tower_p1 int
scoreboard players operation temp int *= 4 int
scoreboard players operation loop int += temp int
execute if score loop int matches 1.. run function lib:tower/loop
execute store result score lib_tower_m2 int run data get block 0 0 0 Items[0].tag.ctmp[0]

scoreboard players operation loop int = lib_tower_p2 int
execute if score loop int matches 1.. run function lib:tower/loop1
data modify entity @e[tag=lib_tower_text,limit=1] CustomName set from block 0 0 0 Items[0].tag.ctmp[0][0].text
data modify entity @e[tag=lib_tower_p2,limit=1] Item.tag.CustomModelData set from block 0 0 0 Items[0].tag.ctmp[0][0].cmd