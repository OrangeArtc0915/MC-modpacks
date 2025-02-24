scoreboard players operation y int = place_y int
scoreboard players operation y int *= 10000 int
execute at @s positioned ~ ~1.62 ~ run function math:l_p-cross

scoreboard players set temp int 1

execute at @e[tag=math_marker,limit=1] unless entity @e[tag=map_path,distance=..25] run scoreboard players set temp int 0

execute at @e[tag=math_marker,limit=1] unless block ~ ~1 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~2 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~3 ~ air run scoreboard players set temp int 0

execute at @e[tag=math_marker,limit=1] if entity @e[tag=map_tower,distance=..4.5] run scoreboard players set temp int 0

execute at @e[tag=math_marker,limit=1] store result score temp2 int run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 command_block replace air
execute at @e[tag=math_marker,limit=1] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 air replace command_block
execute if score temp2 int matches 1.. run scoreboard players set temp int 0

execute store result score temp1 int run data get entity @s Rotation[1] 10
execute if score temp1 int matches ..45 run scoreboard players set temp int 0

execute if score temp int matches 1 at @e[tag=math_marker,limit=1] run function play:skills/reinforce/summon