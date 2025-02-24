execute store result score u0 int run data get entity @s ArmorItems[3].tag.omega.u[0] 10000
execute store result score u1 int run data get entity @s ArmorItems[3].tag.omega.u[1] 10000
execute store result score u2 int run data get entity @s ArmorItems[3].tag.omega.u[2] 10000
execute store result score v0 int run data get entity @s ArmorItems[3].tag.omega.v[0] 10000
execute store result score v1 int run data get entity @s ArmorItems[3].tag.omega.v[1] 10000
execute store result score v2 int run data get entity @s ArmorItems[3].tag.omega.v[2] 10000
execute store result score w0 int run data get entity @s ArmorItems[3].tag.omega.w[0] 10000
execute store result score w1 int run data get entity @s ArmorItems[3].tag.omega.w[1] 10000
execute store result score w2 int run data get entity @s ArmorItems[3].tag.omega.w[2] 10000

execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run tp @s ^-1.0 ^ ^
execute store result score ui int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score uj int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score uk int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run tp @s ^ ^ ^1.0
execute store result score vi int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score vj int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score vk int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run tp @s ^ ^1.0 ^
execute store result score wi int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score wj int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score wk int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
#tellraw @a [{"score":{"name":"ui","objective":"int"}},{"score":{"name":"uj","objective":"int"}},{"score":{"name":"uk","objective":"int"}}]
scoreboard players operation ui int *= u0 int
scoreboard players operation uj int *= u0 int
scoreboard players operation uk int *= u0 int
scoreboard players operation vi int *= u1 int
scoreboard players operation vj int *= u1 int
scoreboard players operation vk int *= u1 int
scoreboard players operation wi int *= u2 int
scoreboard players operation wj int *= u2 int
scoreboard players operation wk int *= u2 int
scoreboard players operation x int = ui int
scoreboard players operation x int += vi int
scoreboard players operation x int += wi int
scoreboard players operation y int = uj int
scoreboard players operation y int += vj int
scoreboard players operation y int += wj int
scoreboard players operation z int = uk int
scoreboard players operation z int += vk int
scoreboard players operation z int += wk int
scoreboard players operation x int /= 5000 int
scoreboard players operation y int /= 5000 int
scoreboard players operation z int /= 5000 int
execute at @s positioned ~ ~1.4 ~ run function math:vector1

execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run tp @s ^-1.0 ^ ^
execute store result score ui int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score uj int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score uk int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run tp @s ^ ^ ^1.0
execute store result score vi int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score vj int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score vk int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run tp @s ^ ^1.0 ^
execute store result score wi int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score wj int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score wk int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
scoreboard players operation ui int *= v0 int
scoreboard players operation uj int *= v0 int
scoreboard players operation uk int *= v0 int
scoreboard players operation vi int *= v1 int
scoreboard players operation vj int *= v1 int
scoreboard players operation vk int *= v1 int
scoreboard players operation wi int *= v2 int
scoreboard players operation wj int *= v2 int
scoreboard players operation wk int *= v2 int
scoreboard players operation x int = ui int
scoreboard players operation x int += vi int
scoreboard players operation x int += wi int
scoreboard players operation y int = uj int
scoreboard players operation y int += vj int
scoreboard players operation y int += wj int
scoreboard players operation z int = uk int
scoreboard players operation z int += vk int
scoreboard players operation z int += wk int
scoreboard players operation x int /= 5000 int
scoreboard players operation y int /= 5000 int
scoreboard players operation z int /= 5000 int
execute at @s positioned ~ ~1.4 ~ run function math:vector1

execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run tp @s ^-1.0 ^ ^
execute store result score ui int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score uj int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score uk int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run tp @s ^ ^ ^1.0
execute store result score vi int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score vj int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score vk int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 as @e[tag=math_marker,limit=1] run tp @s ^ ^1.0 ^
execute store result score wi int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score wj int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score wk int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
scoreboard players operation ui int *= w0 int
scoreboard players operation uj int *= w0 int
scoreboard players operation uk int *= w0 int
scoreboard players operation vi int *= w1 int
scoreboard players operation vj int *= w1 int
scoreboard players operation vk int *= w1 int
scoreboard players operation wi int *= w2 int
scoreboard players operation wj int *= w2 int
scoreboard players operation wk int *= w2 int
scoreboard players operation x int = ui int
scoreboard players operation x int += vi int
scoreboard players operation x int += wi int
scoreboard players operation y int = uj int
scoreboard players operation y int += vj int
scoreboard players operation y int += wj int
scoreboard players operation z int = uk int
scoreboard players operation z int += vk int
scoreboard players operation z int += wk int
scoreboard players operation x int /= 5000 int
scoreboard players operation y int /= 5000 int
scoreboard players operation z int /= 5000 int
execute at @s positioned ~ ~1.4 ~ run function math:vector1