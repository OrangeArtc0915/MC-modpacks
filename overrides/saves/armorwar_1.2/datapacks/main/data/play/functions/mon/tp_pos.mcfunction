data modify entity @s ArmorItems[3].tag.pos1 set from entity @s ArmorItems[3].tag.pos0
data modify entity @s ArmorItems[3].tag.tp_path1 set from entity @s ArmorItems[3].tag.tp_path0
execute at @s positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^1.0
execute store result score i int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
execute store result score k int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000
scoreboard players set min int 1
scoreboard players set max int 70
function math:random
scoreboard players operation i int *= random int
scoreboard players operation k int *= random int
execute store result score tempx int run data get entity @s Pos[0] 10000
execute store result score tempz int run data get entity @s Pos[2] 10000
execute store result entity @s ArmorItems[3].tag.pos0[0] double 0.0001 run scoreboard players operation tempx int += i int
execute store result entity @s ArmorItems[3].tag.pos0[2] double 0.0001 run scoreboard players operation tempz int += k int
data modify entity @s ArmorItems[3].tag.tp_path0 set from entity @s ArmorItems[3].tag.path