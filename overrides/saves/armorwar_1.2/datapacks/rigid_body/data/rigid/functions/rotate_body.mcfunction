#获取旋转和坐标轴数据
scoreboard players operation θ int = @s omega
execute store result score u0 int run data get entity @s ArmorItems[3].tag.omega.u[0] 10000
execute store result score u1 int run data get entity @s ArmorItems[3].tag.omega.u[1] 10000
execute store result score u2 int run data get entity @s ArmorItems[3].tag.omega.u[2] 10000
execute store result score v0 int run data get entity @s ArmorItems[3].tag.omega.v[0] 10000
execute store result score v1 int run data get entity @s ArmorItems[3].tag.omega.v[1] 10000
execute store result score v2 int run data get entity @s ArmorItems[3].tag.omega.v[2] 10000
execute store result score n0 int run data get entity @s ArmorItems[3].tag.omega.n[0] 10000
execute store result score n1 int run data get entity @s ArmorItems[3].tag.omega.n[1] 10000
execute store result score n2 int run data get entity @s ArmorItems[3].tag.omega.n[2] 10000

function rigid:run_rotate

#存入坐标轴数据
execute store result entity @s ArmorItems[3].tag.omega.u[0] double 0.0001 run scoreboard players get u0 int
execute store result entity @s ArmorItems[3].tag.omega.u[1] double 0.0001 run scoreboard players get u1 int
execute store result entity @s ArmorItems[3].tag.omega.u[2] double 0.0001 run scoreboard players get u2 int
execute store result entity @s ArmorItems[3].tag.omega.v[0] double 0.0001 run scoreboard players get v0 int
execute store result entity @s ArmorItems[3].tag.omega.v[1] double 0.0001 run scoreboard players get v1 int
execute store result entity @s ArmorItems[3].tag.omega.v[2] double 0.0001 run scoreboard players get v2 int
execute store result entity @s ArmorItems[3].tag.omega.w[0] double 0.0001 run scoreboard players get w0 int
execute store result entity @s ArmorItems[3].tag.omega.w[1] double 0.0001 run scoreboard players get w1 int
execute store result entity @s ArmorItems[3].tag.omega.w[2] double 0.0001 run scoreboard players get w2 int
scoreboard players operation @s rigid_phi0 = rigid_phi0 int
scoreboard players operation @s rigid_phi1 = rigid_phi1 int
scoreboard players operation @s rigid_phi2 = rigid_phi2 int