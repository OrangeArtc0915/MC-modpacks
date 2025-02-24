scoreboard players set temp int 1

execute unless data entity @s Inventory[{Slot:20b,tag:{hall:enter_game}}] run function hall:enter_game
execute unless data entity @s Inventory[{Slot:21b,tag:{hall:enter_hero}}] run function hall:enter_hero
execute unless data entity @s Inventory[{Slot:22b,tag:{hall:enter_tree}}] run function hall:enter_tree
execute unless data entity @s Inventory[{Slot:33b,tag:{hall:enter_illu}}] run function hall:enter_illu
execute unless data entity @s Inventory[{Slot:34b,tag:{hall:enter_tips}}] run function hall:enter_tips
execute unless data entity @s Inventory[{Slot:35b,tag:{hall:enter_disc}}] run function hall:enter_disc

execute if score temp int matches 0 run function hall:items

execute positioned 180 49 29 at @s[distance=..4.0] run function hall:save/main
execute positioned 180 49 29 unless entity @a[distance=..4.0] as @e[tag=save_set] run function hall:save/kill