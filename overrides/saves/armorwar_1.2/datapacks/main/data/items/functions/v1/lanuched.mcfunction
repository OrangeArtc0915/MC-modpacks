scoreboard players remove @s timer 1
execute if score @s timer matches ..0 run tag @s add explode
data modify entity @e[tag=math_marker,limit=1] Rotation set from entity @s ArmorItems[3].tag.rotation
execute at @s positioned ~ ~1.2 ~ rotated as @e[tag=math_marker,limit=1] run particle firework ^ ^ ^-2.0 0.1 0.1 0.1 0.1 5 force
execute at @s positioned ~ ~1.2 ~ rotated as @e[tag=math_marker,limit=1] run particle flame ^ ^ ^-2.0 0.1 0.1 0.1 0.1 2 force

tp @e[tag=math_marker,limit=1] 0.0 0.0 0.0
execute store result entity @e[tag=math_marker,limit=1] Pos[0] double 0.0001 run scoreboard players get @s vx
execute store result entity @e[tag=math_marker,limit=1] Pos[1] double 0.0001 run scoreboard players get @s vy
execute store result entity @e[tag=math_marker,limit=1] Pos[2] double 0.0001 run scoreboard players get @s vz
execute as @e[tag=math_marker,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.005
execute store result score @s vx run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score @s vy run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score @s vz run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute if score @s vy matches 100.. run scoreboard players remove @s vy 100
execute if score @s vy matches ..-100 run scoreboard players add @s vy 100
execute if score @s vy matches -99..99 run scoreboard players set @s vy 0
execute store result entity @e[tag=math_marker,limit=1] Pos[0] double 0.0001 run scoreboard players get @s vx
execute store result entity @e[tag=math_marker,limit=1] Pos[1] double 0.0001 run scoreboard players get @s vy
execute store result entity @e[tag=math_marker,limit=1] Pos[2] double 0.0001 run scoreboard players get @s vz
execute as @e[tag=math_marker,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute rotated as @e[tag=math_marker,limit=1] run function rigid:face

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s vx
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s vy
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s vz

execute if score @s vy matches 0 run function items:v1/rotate