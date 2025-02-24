scoreboard players set @s walk_t 0
scoreboard players set @s walk_t1 -28

scoreboard players operation temp int = @s rigid_id
execute as @e[tag=body] if score @s rigid_mo = temp int run scoreboard players operation temp int = @s rigid_id
execute as @e[tag=leg_up0] if score @s rigid_mo = temp int run function mobs:boss1/actions/re_walk0
execute as @e[tag=leg_up1] if score @s rigid_mo = temp int run function mobs:boss1/actions/re_walk1

scoreboard players set @s rigid_move 1