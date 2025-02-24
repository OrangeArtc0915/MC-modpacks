execute at @s run spectate @e[limit=1,sort=random,distance=0.1..150,tag=!map_point]
scoreboard players set @s spectate -2
scoreboard players enable @s spectate