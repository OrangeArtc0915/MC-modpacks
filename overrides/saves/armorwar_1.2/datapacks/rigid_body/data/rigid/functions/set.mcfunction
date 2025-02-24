data modify entity @s ArmorItems[3].tag.omega set value {u:[1.0d,0.0d,0.0d],v:[0.0d,1.0d,0.0d],w:[0.0d,0.0d,1.0d],n:[1.0d,0.0d,0.0d]}
scoreboard players set @s rigid_phi1 0
scoreboard players set @s rigid_phi2 0
scoreboard players add @s omega 0
scoreboard players add @s omega_u 0
scoreboard players add @s omega_v 0
scoreboard players add @s omega_w 0
execute at @s run tp @s ~ ~ ~ 0.0 0.0
tag @s add rigid_set