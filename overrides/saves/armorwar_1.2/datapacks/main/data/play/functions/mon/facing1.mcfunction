execute store result score @s facing run data get entity @s ArmorItems[3].tag.path[0]
scoreboard players operation temp int = @s facing
execute as @e[tag=mpoint] if score @s int = temp int run tag @s add tmp

execute store result score temp0 int run data get entity @e[tag=tmp,limit=1] Pos[0] 1000
execute store result score temp1 int run data get entity @s Pos[1] 1000
execute store result score temp2 int run data get entity @e[tag=tmp,limit=1] Pos[2] 1000

scoreboard players set min int -1700
scoreboard players set max int 1700

function math:random
scoreboard players operation temp0 int += random int

function math:random
scoreboard players operation temp2 int += random int

execute as @e[tag=math_marker,limit=1] run function play:mon/facing2
execute at @s facing entity @e[tag=math_marker,limit=1] feet run tp @s ~ ~ ~ ~ 0.0
data modify entity @s ArmorItems[3].tag.rotation set from entity @s Rotation

tag @e remove tmp

data modify entity @e[tag=math_marker,limit=1] Pos set from entity @s ArmorItems[3].tag.pos0
execute at @s unless entity @e[tag=math_marker,distance=..12.0] unless entity @e[tag=built,scores={build=15},distance=..25] run function play:mon/tp_pos