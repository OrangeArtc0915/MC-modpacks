scoreboard players set min int 1
scoreboard players set max int 100
function math:random

execute if score random int matches 1..72 run function tree:grow/trunk/wood