execute store result score p0 int run data get entity @e[tag=tmp,limit=1] Pos[0] 10000
execute store result score p1 int run data get entity @e[tag=tmp,limit=1] Pos[1] 10000
execute store result score p2 int run data get entity @e[tag=tmp,limit=1] Pos[2] 10000

execute positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^-1.0 ^ ^
execute store result score u0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
execute store result score u1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 1000
execute store result score u2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000
scoreboard players operation u0 int *= @s u
scoreboard players operation u1 int *= @s u
scoreboard players operation u2 int *= @s u
scoreboard players operation u0 int /= 100 int
scoreboard players operation u1 int /= 100 int
scoreboard players operation u2 int /= 100 int

execute positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^1.0
execute store result score v0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
execute store result score v1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 1000
execute store result score v2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000
scoreboard players operation v0 int *= @s v
scoreboard players operation v1 int *= @s v
scoreboard players operation v2 int *= @s v
scoreboard players operation v0 int /= 100 int
scoreboard players operation v1 int /= 100 int
scoreboard players operation v2 int /= 100 int

execute positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^1.0 ^
execute store result score w0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
execute store result score w1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 1000
execute store result score w2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000
scoreboard players operation w0 int *= @s w
scoreboard players operation w1 int *= @s w
scoreboard players operation w2 int *= @s w
scoreboard players operation w0 int /= 100 int
scoreboard players operation w1 int /= 100 int
scoreboard players operation w2 int /= 100 int

scoreboard players operation p0 int += u0 int
scoreboard players operation p0 int += v0 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation p0 int += w0 int

scoreboard players operation p1 int += u1 int
scoreboard players operation p1 int += v1 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation p1 int += w1 int

scoreboard players operation p2 int += u2 int
scoreboard players operation p2 int += v2 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation p2 int += w2 int

execute store result score r0 int run data get entity @e[tag=tmp,limit=1] Rotation[0] 10000
execute store result score r1 int run data get entity @e[tag=tmp,limit=1] Rotation[1] 10000
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players operation r0 int += @s rotation_0
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players operation r1 int += @s rotation_1
execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.01f,0.0f,0.0f]
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]

tag @e remove tmp