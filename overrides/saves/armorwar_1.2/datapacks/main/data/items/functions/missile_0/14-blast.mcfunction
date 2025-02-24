data modify entity @e[tag=math_marker,limit=1] Pos set from entity @s ArmorItems[3].tag.pofs[0]

scoreboard players set min int 50
scoreboard players set max int 75
function math:random
scoreboard players operation r int = random int


execute at @e[tag=math_marker,limit=1] run function math:20_radius

tag @s add tmp
execute as @e[tag=result] run data modify entity @e[tag=tmp,limit=1] ArmorItems[3].tag.pofs append from entity @s Pos
tag @s remove tmp

data remove entity @s ArmorItems[3].tag.pofs[0]
execute store result score temp int run data get entity @s ArmorItems[3].tag.pofs
execute at @s if score temp int matches 1.. run function items:missile_0/14-blast-loop