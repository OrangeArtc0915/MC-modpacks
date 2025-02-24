scoreboard players operation temp int = @s rigid_id
execute as @e[tag=body] if score @s rigid_mo = temp int run scoreboard players operation temp int = @s rigid_id
execute as @e[tag=leg_up1] if score @s rigid_mo = temp int run scoreboard players operation temp int = @s rigid_id
execute as @e[tag=leg_bottom1] if score @s rigid_mo = temp int run scoreboard players remove @s w 100
scoreboard players set @s rigid_move 1