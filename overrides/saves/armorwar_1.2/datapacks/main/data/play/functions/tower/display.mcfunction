execute at @s positioned ~ ~1.62 ~ as @e[tag=built1,tag=!play_set] run function math:if-raycast
execute at @s as @e[tag=map_tower,scores={result=1},limit=1,sort=nearest] at @s run scoreboard players set @e[tag=map_tower,distance=0.1..] result 0
tag @e[tag=built1,scores={result=1}] add tower_editing