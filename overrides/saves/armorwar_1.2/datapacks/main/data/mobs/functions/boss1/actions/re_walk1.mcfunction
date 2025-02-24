scoreboard players set @s u 825
scoreboard players set @s v 200
scoreboard players set @s w -1350
scoreboard players operation temp1 int = @s rigid_id
execute as @e[tag=leg_bottom] if score @s rigid_mo = temp1 int run function mobs:boss1/actions/re_walk2