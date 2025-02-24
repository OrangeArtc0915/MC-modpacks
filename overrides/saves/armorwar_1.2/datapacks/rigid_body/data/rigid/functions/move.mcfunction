data modify entity @s NoGravity set value 0b


execute at @s positioned 0.0 0.0 0.0 run tp @e[tag=math_marker] ^-1 ^ ^
execute store result score stempu0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score stempu1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score stempu2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute at @s positioned 0.0 0.0 0.0 run tp @e[tag=math_marker] ^ ^ ^1
execute store result score stempv0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score stempv1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score stempv2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute at @s positioned 0.0 0.0 0.0 run tp @e[tag=math_marker] ^ ^1 ^
execute store result score stempw0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score stempw1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score stempw2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000

scoreboard players operation stempu0 int *= @s volecity_u
scoreboard players operation stempu1 int *= @s volecity_u
scoreboard players operation stempu2 int *= @s volecity_u
scoreboard players operation stempu0 int /= 10000 int
scoreboard players operation stempu1 int /= 10000 int
scoreboard players operation stempu2 int /= 10000 int

scoreboard players operation stempv0 int *= @s volecity_v
scoreboard players operation stempv1 int *= @s volecity_v
scoreboard players operation stempv2 int *= @s volecity_v
scoreboard players operation stempv0 int /= 10000 int
scoreboard players operation stempv1 int /= 10000 int
scoreboard players operation stempv2 int /= 10000 int

scoreboard players operation stempw0 int *= @s volecity_w
scoreboard players operation stempw1 int *= @s volecity_w
scoreboard players operation stempw2 int *= @s volecity_w
scoreboard players operation stempw0 int /= 10000 int
scoreboard players operation stempw1 int /= 10000 int
scoreboard players operation stempw2 int /= 10000 int

scoreboard players operation stempu0 int += stempv0 int
execute store result entity @s Motion[0] double 0.0001 run scoreboard players operation stempu0 int += stempw0 int

scoreboard players operation stempu1 int += stempv1 int
execute store result entity @s Motion[1] double 0.0001 run scoreboard players operation stempu1 int += stempw1 int

scoreboard players operation stempu2 int += stempv2 int
execute store result entity @s Motion[2] double 0.0001 run scoreboard players operation stempu2 int += stempw2 int