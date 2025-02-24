execute if score @s rigid_state matches 0 run function rigid:link/states/hang
execute if score @s rigid_state matches 1 run function rigid:link/states/gurd
execute if score @s rigid_state matches 2 run function rigid:link/states/talk

execute if score @s rigid_move matches 1 run function rigid:link/move