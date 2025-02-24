execute at @s run playsound xiaodou:missile.launch player @a ~ ~ ~ 4 1
tag @s remove await
tag @s add lanuchced
data modify entity @e[tag=math_marker,limit=1] Rotation set from entity @s ArmorItems[3].tag.rotation
execute at @s positioned ~ ~1.2 ~ rotated as @e[tag=math_marker,limit=1] run particle lava ^ ^ ^-2.0 0.1 0.1 0.1 0.1 50 force
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^0.7
execute store result score @s vx run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score @s vy run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score @s vz run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
data modify entity @s NoGravity set value 0b
scoreboard players set @s timer 300