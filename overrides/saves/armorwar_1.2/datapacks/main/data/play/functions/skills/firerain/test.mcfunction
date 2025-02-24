scoreboard players operation y int = place_y int
scoreboard players operation y int *= 10000 int
execute at @s positioned ~ ~1.62 ~ run function math:l_p-cross

scoreboard players set temp int 1

execute at @e[tag=math_marker,limit=1] unless entity @e[tag=map_path,distance=..25] run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] if entity @e[tag=map_tower,distance=..4.5] run scoreboard players set temp int 0

execute at @e[tag=math_marker,limit=1] unless block ~ ~1 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~2 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~3 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~4 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~5 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~6 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~7 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~8 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~9 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~10 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~11 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~12 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~13 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~14 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~15 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~16 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~17 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~18 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~19 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~20 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~21 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~22 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~23 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~24 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~25 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~26 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~27 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~28 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~29 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~30 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~31 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~32 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~33 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~34 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~35 ~ air run scoreboard players set temp int 0
execute at @e[tag=math_marker,limit=1] unless block ~ ~36 ~ air run scoreboard players set temp int 0

execute store result score temp1 int run data get entity @s Rotation[1] 10
execute if score temp1 int matches ..45 run scoreboard players set temp int 0

execute if score temp int matches 1 at @e[tag=math_marker,limit=1] run function play:skills/firerain/summon