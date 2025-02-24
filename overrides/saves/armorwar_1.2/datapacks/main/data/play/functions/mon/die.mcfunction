execute unless score @s from matches 1.. if entity @s[tag=attacking] run scoreboard players operation @s from = @s target

scoreboard players operation temp int = @s from
execute as @a if score @s muid = temp int run tag @s add tmp
execute if score @s from matches 1.. if entity @a[tag=tmp] run function play:mon/xp
tag @a remove tmp


execute store result score max int run scoreboard players operation min int = @s rew
scoreboard players operation min int *= 9 int
scoreboard players operation min int /= 10 int
scoreboard players operation max int *= 11 int
scoreboard players operation max int /= 10 int
execute unless score min int matches 0 run scoreboard players operation min int > 10 int
execute unless score max int matches 0 run scoreboard players operation max int > 10 int
function math:uuid-random
scoreboard players operation random int /= 10 int
scoreboard players operation coin int += random int

scoreboard players operation temp int = @s muid
execute as @e[tag=mon_model] if score @s int = temp int run kill @s

kill @s
playsound minecraft:block.netherrack.step player @a ~ ~ ~ 1 0.5