scoreboard players set min int 1
scoreboard players set max int 100
function math:random
execute if score random int matches 1..35 run playsound xiaodou:magic.att player @a ~ ~ ~ 4.0 1.4
execute if score random int matches 36..55 run playsound xiaodou:magic.att player @a ~ ~ ~ 4.0 1.2
execute if score random int matches 56..75 run playsound xiaodou:magic.att player @a ~ ~ ~ 4.0 1.0
execute if score random int matches 76..100 run playsound xiaodou:magic.att player @a ~ ~ ~ 4.0 0.8
scoreboard players add random int 230
scoreboard players operation random int *= 6 int
scoreboard players operation @e[tag=tmp,limit=1] mdamage += random int
execute as @e[tag=tmp,limit=1] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.5 ~ run particle minecraft:soul_fire_flame ~ ~ ~ 0.35 0.35 0.35 0.02 20 force
scoreboard players set @e[tag=tmp,limit=1] unmove 2

execute facing entity @e[tag=tmp,limit=1] feet rotated ~ 0.0 positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run function play:tower/skills/15-ray/coo
execute store result score p0 int run data get entity @s Pos[0] 10000
execute store result score s int run data get entity @s Pos[1] 10000
execute store result score p1 int run data get entity @e[tag=tmp,limit=1] Pos[1] 10000
execute store result entity @s Pos[1] double 0.0001 run scoreboard players add p1 int 8000
execute store result score p2 int run data get entity @s Pos[2] 10000
scoreboard players operation s int -= p1 int
execute at @e[tag=tmp,limit=1] positioned ~ ~0.8 ~ run function math:3get-length
scoreboard players operation t int = result int
tp @s ~ ~ ~

scoreboard players set min int -300
scoreboard players set max int 300
function math:random
scoreboard players operation a int = random int
scoreboard players operation temp int = t int
scoreboard players operation temp int *= t int
execute store result score b int run scoreboard players operation temp int /= 1000 int
scoreboard players operation b int /= 10 int
scoreboard players operation b int *= t int
scoreboard players operation b int /= 1000 int
scoreboard players operation b int *= a int
scoreboard players operation temp1 int = s int
scoreboard players operation temp1 int *= 1000 int
scoreboard players operation b int *= -1 int
scoreboard players operation b int -= temp1 int
scoreboard players operation b int /= temp int

scoreboard players set min int 4
scoreboard players set max int 7
function math:random
scoreboard players operation k int = random int
scoreboard players set min int 1000
scoreboard players set max int 2000
function math:random
scoreboard players operation A0 int = random int
scoreboard players set v int 0

execute as @e[tag=math_marker,limit=1] run function play:tower/skills/15-ray/move

scoreboard players set min int -80
scoreboard players set max int 80
function math:random
scoreboard players operation a int += random int
scoreboard players operation temp int = t int
scoreboard players operation temp int *= t int
execute store result score b int run scoreboard players operation temp int /= 1000 int
scoreboard players operation b int /= 10 int
scoreboard players operation b int *= t int
scoreboard players operation b int /= 1000 int
scoreboard players operation b int *= a int
scoreboard players operation temp1 int = s int
scoreboard players operation temp1 int *= 1000 int
scoreboard players operation b int *= -1 int
scoreboard players operation b int -= temp1 int
scoreboard players operation b int /= temp int
scoreboard players set v int 0

scoreboard players set result int 0
execute as @p facing entity @s feet positioned 0.0 0.0 0.0 run function play:tower/skills/15-ray/player_test

execute if score result int matches 0 as @e[tag=math_marker,limit=1] run function play:tower/skills/15-ray/move1
execute if score result int matches 1 as @e[tag=math_marker,limit=1] run function play:tower/skills/15-ray/move2

tag @e remove tmp