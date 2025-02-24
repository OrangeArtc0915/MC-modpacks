scoreboard players set min int 1
execute store result score max int run data get block 0 0 0 Items[0].tag.ai_pool
scoreboard players operation max int > min int
function math:random

scoreboard players remove random int 1
execute if score random int matches 1.. run function play:ai/rdaction_loop