scoreboard players add @s rigid_timer 1
execute if score @s rigid_timer matches 20 run function rigid:link/actions/add_torch0
execute if score @s rigid_timer matches 30 run function rigid:link/actions/add_torch1
execute if score @s rigid_timer matches 40 run function rigid:link/actions/add_torch2
execute if score @s rigid_timer matches 50 run function rigid:link/actions/add_torch3
execute if score @s rigid_timer matches 60 run function rigid:link/actions/add_torch4
execute if score @s rigid_timer matches 70 run function rigid:link/actions/add_torch5

scoreboard players set theta int -5000
function rigid:link/actions/rotate_0

scoreboard players set length int 1
function rigid:link/actions/move_f

execute if score @s rigid_timer matches 100.. at @s if entity @e[type=zombie,distance=..20.0,nbt={Fire:-1s}] run function rigid:link/actions/s_gurd

execute if score @s rigid_timer matches 100.. at @s if entity @a[distance=..4.0] run function rigid:link/actions/s_talk