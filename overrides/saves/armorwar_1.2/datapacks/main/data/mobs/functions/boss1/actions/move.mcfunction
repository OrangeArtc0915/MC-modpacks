scoreboard players add @s walk_t 1
execute if score @s walk_t matches 1..5 run function mobs:boss1/actions/lb1_up
execute if score @s walk_t matches 2 at @s run playsound minecraft:block.piston.contract player @a ~ ~ ~ 3.5 0.8
execute if score @s walk_t matches 10..17 run function mobs:boss1/actions/lu1_fo
execute if score @s walk_t matches 20..24 run function mobs:boss1/actions/lb1_do
execute if score @s walk_t matches 22 at @s run playsound minecraft:block.piston.extend player @a ~ ~ ~ 3.5 0.8
execute if score @s walk_t matches 35..42 run function mobs:boss1/actions/lu1_ba
execute if score @s walk_t matches 57.. run scoreboard players set @s walk_t 0

scoreboard players add @s walk_t1 1
execute if score @s walk_t1 matches 1..5 run function mobs:boss1/actions/lb0_up
execute if score @s walk_t1 matches 2 at @s run playsound minecraft:block.piston.contract player @a ~ ~ ~ 3.5 0.8
execute if score @s walk_t1 matches 10..17 run function mobs:boss1/actions/lu0_fo
execute if score @s walk_t1 matches 20..24 run function mobs:boss1/actions/lb0_do
execute if score @s walk_t1 matches 22 at @s run playsound minecraft:block.piston.extend player @a ~ ~ ~ 3.5 0.8
execute if score @s walk_t1 matches 35..42 run function mobs:boss1/actions/lu0_ba
execute if score @s walk_t1 matches 57.. run scoreboard players set @s walk_t1 0

scoreboard players add @s walk_t 1
execute if score @s walk_t matches 1..5 run function mobs:boss1/actions/lb1_up
execute if score @s walk_t matches 2 at @s run playsound minecraft:block.piston.contract player @a ~ ~ ~ 3.5 0.8
execute if score @s walk_t matches 10..17 run function mobs:boss1/actions/lu1_fo
execute if score @s walk_t matches 20..24 run function mobs:boss1/actions/lb1_do
execute if score @s walk_t matches 22 at @s run playsound minecraft:block.piston.extend player @a ~ ~ ~ 3.5 0.8
execute if score @s walk_t matches 35..42 run function mobs:boss1/actions/lu1_ba
execute if score @s walk_t matches 57.. run scoreboard players set @s walk_t 0

scoreboard players add @s walk_t1 1
execute if score @s walk_t1 matches 1..5 run function mobs:boss1/actions/lb0_up
execute if score @s walk_t1 matches 2 at @s run playsound minecraft:block.piston.contract player @a ~ ~ ~ 3.5 0.8
execute if score @s walk_t1 matches 10..17 run function mobs:boss1/actions/lu0_fo
execute if score @s walk_t1 matches 20..24 run function mobs:boss1/actions/lb0_do
execute if score @s walk_t1 matches 22 at @s run playsound minecraft:block.piston.extend player @a ~ ~ ~ 3.5 0.8
execute if score @s walk_t1 matches 35..42 run function mobs:boss1/actions/lu0_ba
execute if score @s walk_t1 matches 57.. run scoreboard players set @s walk_t1 0