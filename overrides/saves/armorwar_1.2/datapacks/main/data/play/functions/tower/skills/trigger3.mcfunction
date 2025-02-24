execute if score @s build matches 14 run function play:tower/skills/14-missile/count
execute if score @s build matches 15 run function play:tower/skills/15-awsl/test
execute if score @s build matches 16 run function play:tower/skills/16-heal/summon_test

scoreboard players set min int 1
scoreboard players set max int 10
function math:random
execute if score random int matches 1 run scoreboard players add @s timer3 3