execute if score reinforce int matches -1 if data entity @s Inventory[{Slot:-106b,tag:{skill:reinforce}}] run function play:skills/reinforce/test
execute if score firerain int matches -1 if data entity @s Inventory[{Slot:-106b,tag:{skill:firerain}}] run function play:skills/firerain/test
execute if score wave_waiting int matches 1 if data entity @s Inventory[{Slot:-106b,tag:{item:next_wave}}] as @e[tag=tjmarker,limit=1] run function play:wave_m/end1

execute if score reinforce int matches -1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{skill:reinforce}} run function play:skills/reinforce/test
execute if score firerain int matches -1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{skill:firerain}} run function play:skills/firerain/test
execute if score wave_waiting int matches 1 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{item:next_wave}} as @e[tag=tjmarker,limit=1] run function play:wave_m/end1
execute if score wave int matches 0 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{item:vist_self}} run function play:vist_self
execute if score wave int matches 0 if score @s crc matches 1.. if data entity @s SelectedItem{tag:{item:vist_enmy}} run function play:vist_enmy

execute if score reinforce int matches -1 unless data entity @s Inventory[{tag:{skill:reinforce}}] run function play:skills/reinforce/test
execute if score firerain int matches -1 unless data entity @s Inventory[{tag:{skill:firerain}}] run function play:skills/firerain/test
#execute if score wave_waiting int matches 1 unless data entity @s Inventory[{tag:{item:next_wave}}] as @e[tag=tjmarker,limit=1] run function play:wave_m/end1

scoreboard players set button_temp int 1