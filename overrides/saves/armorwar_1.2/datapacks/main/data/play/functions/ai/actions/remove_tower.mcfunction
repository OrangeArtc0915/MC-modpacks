scoreboard players set @e[tag=map_tower] result 0
scoreboard players operation temp int = @s target
execute as @e[tag=map_tower] if score @s int = temp int run scoreboard players set @s result 1
function play:tower/remove