scoreboard players set result int 0
execute as @e[tag=soldier,tag=!hero,distance=..25.0] if score @s hp < @s mhp run scoreboard players set result int 1
execute if score result int matches 1 run function play:tower/skills/16-heal/summon
scoreboard players set @s timer3 0