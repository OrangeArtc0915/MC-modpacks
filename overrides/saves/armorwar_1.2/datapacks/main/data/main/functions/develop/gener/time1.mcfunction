execute if score @s making matches 0 store result score temp int run data get block 0 0 0 Items[0].tag.making[0].time
execute if score @s making matches 1 store result score temp int run data get block 0 0 0 Items[0].tag.making[1].time
execute if score @s making matches 2 store result score temp int run data get block 0 0 0 Items[0].tag.making[2].time
execute if score @s making matches 3 store result score temp int run data get block 0 0 0 Items[0].tag.making[3].time
execute if score @s making matches 4 store result score temp int run data get block 0 0 0 Items[0].tag.making[4].time
execute if score @s making matches 5 store result score temp int run data get block 0 0 0 Items[0].tag.making[5].time
execute if score @s making matches 6 store result score temp int run data get block 0 0 0 Items[0].tag.making[6].time
scoreboard players operation input int = temp int
function main:time
setblock 0 10 0 air
setblock 0 10 0 oak_sign{Text1:'[{"text":"昼夜时间:"},{"score":{"name":"input","objective":"int"}}]'}
execute as @e[tag=map_time_upd] run data modify entity @s CustomName set from block 0 10 0 Text1