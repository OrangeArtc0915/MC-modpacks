gamemode spectator @p
tag @p add zplayer
execute as @e[scores={zing=1}] at @s run tp @p -453 116 131
execute as @e[scores={zing=2}] at @s run tp @p 4133 84 980
execute as @e[scores={zing=0}] run tellraw @p {"text":"当前无游戏进行！","color":"red"}
execute as @e[scores={zing=0}] run gamemode adventure @p
execute as @e[scores={zing=0}] run tag @p remove zplayer