scoreboard players set duration int 26
execute positioned ~ ~2 ~ run function block_reserve:keep

scoreboard players set min int 1
scoreboard players set max int 5
function math:random

execute if score random int matches 1..4 run setblock ~ ~2 ~ minecraft:jungle_leaves
execute if score random int matches 5 run setblock ~ ~2 ~ minecraft:shroomlight
execute if score random int matches 5 run playsound minecraft:block.shroomlight.place player @a ~ ~2 ~ 2.0 0.5