execute unless block ~ ~ ~ air run scoreboard players set result int 0
execute unless block ~ ~1 ~ air run scoreboard players set result int 0
execute if score result int matches 1 run tp @s ~ ~ ~
scoreboard players remove temp int 1
execute if score result int matches 1 if score temp int matches 1.. positioned ^ ^ ^0.5 run function main:fly/forw_l