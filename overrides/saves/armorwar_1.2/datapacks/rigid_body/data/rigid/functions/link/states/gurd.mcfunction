scoreboard players add @s rigid_timer 1

scoreboard players operation temp int = @s rigid_id
execute if score @s rigid_timer matches 10 at @s as @e[tag=head] if score @s rigid_mo = temp int at @e[type=zombie,nbt={Fire:-1s},distance=..25.0,limit=1,sort=nearest] positioned ~ ~1.0 ~ run function rigid:link/actions/rotate_here_0
execute if score @s rigid_timer matches 25 as @e[tag=head] if score @s rigid_mo = temp int run function rigid:link/actions/rotate_back
execute if score @s rigid_timer matches 26 at @e[type=zombie,nbt={Fire:-1s},distance=..25.0,limit=1,sort=nearest] run function rigid:link/actions/rotate_here
scoreboard players set theta int 900000
execute if score @s rigid_timer matches 38 as @e[tag=arm0] if score @s rigid_mo = temp int run function rigid:link/actions/rotate_1
execute if score @s rigid_timer matches 45 as @e[tag=arm1] if score @s rigid_mo = temp int run function rigid:link/actions/rotate_1

execute if score @s rigid_timer matches 50 as @e[tag=arm0] if score @s rigid_mo = temp int run function rigid:link/actions/shoot_torch
execute if score @s rigid_timer matches 55 as @e[tag=arm1] if score @s rigid_mo = temp int run function rigid:link/actions/shoot_torch
execute if score @s rigid_timer matches 60 as @e[tag=arm0] if score @s rigid_mo = temp int run function rigid:link/actions/shoot_torch
execute if score @s rigid_timer matches 65 as @e[tag=arm1] if score @s rigid_mo = temp int run function rigid:link/actions/shoot_torch
execute if score @s rigid_timer matches 70 as @e[tag=arm0] if score @s rigid_mo = temp int run function rigid:link/actions/shoot_torch
execute if score @s rigid_timer matches 75 as @e[tag=arm1] if score @s rigid_mo = temp int run function rigid:link/actions/shoot_torch

execute if score @s rigid_timer matches 90 run function rigid:link/actions/s_hang