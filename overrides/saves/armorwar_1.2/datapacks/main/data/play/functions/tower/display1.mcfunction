execute as @e[tag=map_tower,tag=!built] at @a[gamemode=!spectator,tag=decision_maker,limit=1,tag=!selecting_tower] run function play:tower/if-raycast
execute if entity @e[tag=map_tower,tag=!built,scores={result=1}] at @a[tag=decision_maker,limit=1] at @e[tag=map_tower,tag=!built,scores={result=1},limit=1,sort=nearest] run scoreboard players set @e[tag=map_tower,tag=!built,scores={result=1},distance=0.1..] result 0
execute as @e[tag=map_tower,tag=!built,scores={result=1}] at @s[tag=!circled] positioned ~ ~0.1 ~ run function play:tower/circle
scoreboard players set @e[tag=map_tower,tag=!built,scores={result=0}] CD 20
tag @e[tag=map_tower,tag=!built,scores={result=1}] add tower_selecting