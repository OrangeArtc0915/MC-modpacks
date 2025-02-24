scoreboard players operation @s rigid_phi0 += @s omega_v
execute store result score @s rigid_phi1 run scoreboard players set @s rigid_phi2 900000
execute store result score temp int run data get entity @s Rotation[1] 10000
scoreboard players operation @s rigid_phi1 -= temp int

execute store result score temp int run data get entity @s Rotation[0] 10000
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players operation temp int -= @s omega_w

execute store result score temp int run data get entity @s Rotation[1] 10000
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players operation temp int -= @s omega_u