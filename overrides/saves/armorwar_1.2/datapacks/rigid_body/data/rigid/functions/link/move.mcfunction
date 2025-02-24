scoreboard players operation temp int = @s rigid_mo
execute as @e[tag=rigid_link] if score @s rigid_id = temp int run tag @s add tmp
execute if entity @e[tag=tmp] at @e[tag=tmp,limit=1] run function rigid:link/upd

scoreboard players operation temp int = @s rigid_id
execute as @e[tag=rigid_link] if score @s rigid_mo = temp int run function rigid:link/move
scoreboard players set @s rigid_move 0