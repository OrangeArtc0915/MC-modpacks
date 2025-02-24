execute at @s run tp @e[tag=math_marker,limit=1] ~ ~ ~
scoreboard players operation temp int = soldier_y int
execute store result entity @e[tag=math_marker,limit=1] Pos[1] double 0.1 run scoreboard players remove temp int 19

tag @e remove result

function play:mon/ash1
function play:mon/ash1
function play:mon/ash1
function play:mon/ash1
function play:mon/ash1

execute as @e[tag=result] at @s rotated ~ 0.0 run tp @s ^ ^ ^-0.2

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

tp @s 0 -1000 0
tag @s remove monster
tag @s add killed