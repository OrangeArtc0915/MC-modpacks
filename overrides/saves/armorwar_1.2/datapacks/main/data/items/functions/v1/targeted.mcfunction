scoreboard players operation temp int = @s target
execute as @e[tag=monster] if score @s muid = temp int run tag @s add tmp
execute at @s at @e[tag=tmp,distance=..3.5] run tp @s ~ ~ ~
execute if entity @e[tag=tmp] run function items:v1/target1
execute unless entity @e[tag=tmp] at @s unless entity @e[tag=monster,distance=..10.0] run function items:v1/retarget
tag @e remove tmp


scoreboard players remove @s timer 1
execute if score @s timer matches ..0 run tag @s add explode
scoreboard players operation @s vx *= 9 int
scoreboard players operation @s vx /= 10 int
scoreboard players operation @s vy *= 9 int
scoreboard players operation @s vy /= 10 int
scoreboard players operation @s vz *= 9 int
scoreboard players operation @s vz /= 10 int
tp @e[tag=math_marker,limit=1] @s
execute store result entity @e[tag=math_marker,limit=1] Pos[0] double 0.0001 run scoreboard players get @s tx
execute store result entity @e[tag=math_marker,limit=1] Pos[1] double 0.0001 run scoreboard players get @s ty
execute store result entity @e[tag=math_marker,limit=1] Pos[2] double 0.0001 run scoreboard players get @s tz
execute at @e[tag=math_marker,limit=1] run tag @s[distance=..1.5] add explode
execute at @s facing entity @e[tag=math_marker,limit=1] feet positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^0.2
execute store result score tempx int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score tempy int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score tempz int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000

execute store result entity @s Motion[0] double 0.0001 run scoreboard players operation @s vx += tempx int
execute store result entity @s Motion[1] double 0.0001 run scoreboard players operation @s vy += tempy int
execute store result entity @s Motion[2] double 0.0001 run scoreboard players operation @s vz += tempz int

scoreboard players operation x int = @s x
scoreboard players operation y int = @s y
scoreboard players operation z int = @s z
execute as @e[tag=math_marker,limit=1] run function main:store_pos
execute at @e[tag=math_marker,limit=1] run scoreboard players add @s[distance=..0.15] tp_time 1
execute at @e[tag=math_marker,limit=1] run scoreboard players set @s[distance=0.15..] tp_time 0
execute if score @s tp_time matches 4.. at @s run tp @s ~ ~5.3 ~

tp @e[tag=math_marker,limit=1] 0.0 0.0 0.0
execute store result entity @e[tag=math_marker,limit=1] Pos[0] double 0.0001 run scoreboard players get @s vx
execute store result entity @e[tag=math_marker,limit=1] Pos[1] double 0.0001 run scoreboard players get @s vy
execute store result entity @e[tag=math_marker,limit=1] Pos[2] double 0.0001 run scoreboard players get @s vz
execute as @e[tag=math_marker,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute rotated as @e[tag=math_marker,limit=1] run function rigid:face
execute at @s run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 5 2

execute store result score @s x run data get entity @s Pos[0] 10000
execute store result score @s y run data get entity @s Pos[1] 10000
execute store result score @s z run data get entity @s Pos[2] 10000