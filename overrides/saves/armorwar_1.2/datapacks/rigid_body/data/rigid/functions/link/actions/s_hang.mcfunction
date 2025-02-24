scoreboard players operation temp int = @s rigid_id
execute as @e[tag=arm0] if score @s rigid_mo = temp int run function rigid:link/actions/rotate_back

scoreboard players operation temp int = @s rigid_id
execute as @e[tag=arm1] if score @s rigid_mo = temp int run function rigid:link/actions/rotate_back

execute at @s rotated ~ 0.0 positioned ^ ^ ^1.0 run function rigid:link/actions/rotate_here
scoreboard players set @s rigid_state 0
scoreboard players set @s rigid_timer 0