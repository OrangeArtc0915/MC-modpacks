scoreboard players set temp int 0
execute if block ~ ~-1 ~ minecraft:jungle_log run scoreboard players set temp int 1
execute if block ~ ~-1 ~ minecraft:jungle_wood run scoreboard players set temp int 1
execute if score temp int matches 1 run function tree:grow/crown