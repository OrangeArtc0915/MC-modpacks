scoreboard players set temp1 int 0
scoreboard players operation temp int = @s int
execute as @e[tag=soldier] if score @s int = temp int run scoreboard players add temp1 int 1
execute if score temp1 int < 3 int if score @s soldier_count matches 1.. at @s positioned ~0.5 ~ ~0.5 run function play:tower/skills/16-summon