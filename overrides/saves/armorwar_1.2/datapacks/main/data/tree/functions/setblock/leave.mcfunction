scoreboard players set min int 1
scoreboard players set max int 100
function math:random

execute if score random int matches 1..80 run setblock ~ ~ ~ minecraft:jungle_leaves
execute if score random int matches 81..100 run setblock ~ ~ ~ minecraft:shroomlight