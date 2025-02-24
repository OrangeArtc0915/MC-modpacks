execute at @s run tp @s ^ ^ ^0.25
scoreboard players set @s rigid_move 1

execute at @s positioned ^0.8 ^ ^ run particle flame ~ ~-1.6 ~ 0.08 0.08 0.08 0.03 3 force
execute at @s positioned ^-0.8 ^ ^ run particle flame ~ ~-1.6 ~ 0.08 0.08 0.08 0.03 3 force
execute at @s positioned ^0.8 ^ ^ run particle lava ~ ~-1.6 ~ 0.08 0.08 0.08 0.03 2 force
execute at @s positioned ^-0.8 ^ ^ run particle lava ~ ~-1.6 ~ 0.08 0.08 0.08 0.03 2 force