execute store result score @s target run data get block 0 0 0 Items[0].tag.ai_pool[0].target
execute store result score @s input run data get block 0 0 0 Items[0].tag.ai_pool[0].input
execute store result score chance int run data get block 0 0 0 Items[0].tag.ai_pool[0].chance

scoreboard players set min int 1
scoreboard players set max int 100
function math:random
execute if score random int <= chance int run function play:ai/action