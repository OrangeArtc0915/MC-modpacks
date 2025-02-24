scoreboard players operation x int = @s x
scoreboard players operation y int = @s y
scoreboard players operation z int = @s z
execute as @e[tag=math_marker,limit=1] run function main:store_pos
execute at @e[tag=math_marker,limit=1] run tp @s ~ ~ ~
execute at @s run playsound xiaodou:level.up player @s

gamemode adventure @s

tag @s remove dead

scoreboard players operation @s hp = @s mhp
function play:hr/upd_hp