scoreboard players set min int 1
scoreboard players set max int 10
function math:random
execute if score random int matches 1..3 run function play:sold/16-shield