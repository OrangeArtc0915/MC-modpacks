execute store result score max int run scoreboard players operation min int = @s rew
scoreboard players operation min int *= 1 int
scoreboard players operation min int /= 10 int
scoreboard players operation max int *= 2 int
scoreboard players operation max int /= 10 int
execute unless score min int matches 0 run scoreboard players operation min int > 10 int
execute unless score max int matches 0 run scoreboard players operation max int > 10 int
function math:uuid-random
scoreboard players operation xp int = random int
scoreboard players operation xp int /= 10 int
execute as @a[tag=tmp] run function play:hr/xp