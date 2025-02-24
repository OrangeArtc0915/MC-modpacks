scoreboard players set @s phi_l0 0
scoreboard players set @s phi_l1 0
scoreboard players set @s phi_a0 0
execute unless entity @s[tag=attacking] run scoreboard players set @s phi_a1 0
execute if entity @s[tag=attacking] run scoreboard players set @s phi_a1 -9000
execute if score @s move1_3 matches 0 run function play:sold/move1-3