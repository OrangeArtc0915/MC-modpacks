execute at @s unless block ~ ~ ~ air run function play:mob_skills/marrow_kill
execute at @s run tp @s ^ ^ ^0.5
execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @a
execute at @s as @e[tag=soldier,limit=1,sort=nearest] run function math:hit_test
execute if score result int matches 1 at @s run function play:mob_skills/marrow_damage
scoreboard players remove temp int 1
execute if score temp int matches 1.. if score result int matches 0 run function play:mob_skills/marrow_tp