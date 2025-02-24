scoreboard players set min int 1
scoreboard players set max int 5
function math:random
execute if score random int matches 3..4 run function play:mon/boom