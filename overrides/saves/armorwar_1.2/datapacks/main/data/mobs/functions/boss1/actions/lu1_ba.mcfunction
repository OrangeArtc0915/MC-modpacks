scoreboard players operation temp int = @s rigid_id
execute as @e[tag=body] if score @s rigid_mo = temp int run scoreboard players operation temp int = @s rigid_id
execute as @e[tag=leg_up1] if score @s rigid_mo = temp int run scoreboard players add @s v 100
execute at @s run tp @s ^ ^ ^0.1
scoreboard players set @s rigid_move 1