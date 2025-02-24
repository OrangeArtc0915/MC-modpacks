scoreboard players operation temp int = @s rigid_id
execute as @e[tag=body] if score @s rigid_mo = temp int run scoreboard players operation temp int = @s rigid_id
execute as @e[tag=hand0] if score @s rigid_mo = temp int run tag @s add tmp5
scoreboard players set @e[tag=tmp5,limit=1] rotation_1 0
tag @e remove tmp5

scoreboard players set @s rigid_state 0
scoreboard players set @s timer0 0
scoreboard players reset @s target
function mobs:boss1/actions/turn_facing