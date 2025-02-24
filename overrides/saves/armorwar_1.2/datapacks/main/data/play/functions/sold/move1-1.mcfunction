scoreboard players set @s move1_3 0
execute if score @s speed matches 1 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.02
execute if score @s speed matches 2 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.04
execute if score @s speed matches 3 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.06
execute if score @s speed matches 4 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.08
execute if score @s speed matches 5 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.10
execute if score @s speed matches 6 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.12
execute if score @s speed matches 7 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.14
execute if score @s speed matches 8 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.16
execute if score @s speed matches 9 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.18
execute if score @s speed matches 10 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.20


execute store result score temp1 int run scoreboard players operation temp2 int = @s speed
scoreboard players operation temp2 int *= 100 int
scoreboard players operation temp int = @s walk_amp
scoreboard players operation temp int += temp2 int
scoreboard players operation temp1 int *= @s walk_pace
scoreboard players operation temp1 int *= @s entity_state
execute store result score @s phi_a0 store result score @s phi_a1 store result score @s phi_l1 run scoreboard players operation @s phi_l0 += temp1 int
scoreboard players operation @s phi_a0 *= -1 int
execute store result score temp1 int run scoreboard players operation @s phi_l1 *= -1 int

scoreboard players operation temp1 int *= temp1 int
scoreboard players operation temp int *= temp int
execute if score temp1 int >= temp int run scoreboard players operation @s entity_state *= -1 int

execute store result score temp int run data get entity @s Pos[1] 10
execute unless score temp int = soldier_y int store result entity @s Pos[1] double 0.1 run scoreboard players get soldier_y int

execute if entity @s[tag=leftarmed] run data modify entity @s Pose.LeftArm[0] set value -20.0f