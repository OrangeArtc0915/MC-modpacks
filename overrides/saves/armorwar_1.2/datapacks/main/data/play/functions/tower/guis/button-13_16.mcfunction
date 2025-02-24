#获取等级
scoreboard players operation skill_0 int = @e[tag=tower_editing,limit=1] skill_0
scoreboard players operation skill_1 int = @e[tag=tower_editing,limit=1] skill_1
scoreboard players operation skill_2 int = @e[tag=tower_editing,limit=1] skill_2

#四级塔技能
execute if data entity @s Inventory[{Slot:-106b,tag:{tower_skill:arrow3_0}}] if score skill_0 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/13-up0
execute if data entity @s Inventory[{Slot:-106b,tag:{tower_skill:arrow3_1}}] if score skill_1 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/13-up1
execute if data entity @s Inventory[{Slot:-106b,tag:{tower_skill:gun3_0}}] if score skill_0 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/14-up0
execute if data entity @s Inventory[{Slot:-106b,tag:{tower_skill:gun3_1}}] if score skill_1 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/14-up1
execute if data entity @s Inventory[{Slot:-106b,tag:{tower_skill:magic3_0}}] if score skill_0 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/15-up0
execute if data entity @s Inventory[{Slot:-106b,tag:{tower_skill:magic3_1}}] if score skill_1 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/15-up1
execute if data entity @s Inventory[{Slot:-106b,tag:{tower_skill:barrack3_0}}] if score skill_0 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/16-up0
execute if data entity @s Inventory[{Slot:-106b,tag:{tower_skill:barrack3_1}}] if score skill_1 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/16-up1
execute if data entity @s Inventory[{Slot:-106b,tag:{tower_skill:barrack3_2}}] if score skill_2 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/16-up2

execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower_skill:arrow3_0}} if score skill_0 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/13-up0
execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower_skill:arrow3_1}} if score skill_1 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/13-up1
execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower_skill:gun3_0}} if score skill_0 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/14-up0
execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower_skill:gun3_1}} if score skill_1 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/14-up1
execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower_skill:magic3_0}} if score skill_0 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/15-up0
execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower_skill:magic3_1}} if score skill_1 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/15-up1
execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower_skill:barrack3_0}} if score skill_0 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/16-up0
execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower_skill:barrack3_1}} if score skill_1 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/16-up1
execute if score @s crc matches 1.. if data entity @s SelectedItem{tag:{tower_skill:barrack3_2}} if score skill_2 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/16-up2


execute if score @s tower_gui matches 13 unless data entity @s Inventory[{tag:{tower_skill:arrow3_0}}] if score skill_0 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/13-up0
execute if score @s tower_gui matches 13 unless data entity @s Inventory[{tag:{tower_skill:arrow3_1}}] if score skill_1 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/13-up1
execute if score @s tower_gui matches 14 unless data entity @s Inventory[{tag:{tower_skill:gun3_0}}] if score skill_0 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/14-up0
execute if score @s tower_gui matches 14 unless data entity @s Inventory[{tag:{tower_skill:gun3_1}}] if score skill_1 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/14-up1
execute if score @s tower_gui matches 15 unless data entity @s Inventory[{tag:{tower_skill:magic3_0}}] if score skill_0 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/15-up0
execute if score @s tower_gui matches 15 unless data entity @s Inventory[{tag:{tower_skill:magic3_1}}] if score skill_1 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/15-up1
execute if score @s tower_gui matches 16 unless data entity @s Inventory[{tag:{tower_skill:barrack3_0}}] if score skill_0 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/16-up0
execute if score @s tower_gui matches 16 unless data entity @s Inventory[{tag:{tower_skill:barrack3_1}}] if score skill_1 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/16-up1
execute if score @s tower_gui matches 16 unless data entity @s Inventory[{tag:{tower_skill:barrack3_2}}] if score skill_2 int matches ..2 as @e[tag=tower_editing,limit=1] run function play:tower/skills/16-up2


#获取等级
scoreboard players operation skill_0 int = @e[tag=tower_editing,limit=1] skill_0
scoreboard players operation skill_1 int = @e[tag=tower_editing,limit=1] skill_1
scoreboard players operation skill_2 int = @e[tag=tower_editing,limit=1] skill_2

#清理
execute if score @s crc matches 1.. unless data entity @s SelectedItem.tag{tower:remove} run replaceitem entity @s hotbar.1 air
execute if score @s crc matches 1.. unless data entity @s SelectedItem.tag{tower:remove} run replaceitem entity @s hotbar.2 air
execute if score @s crc matches 1.. unless data entity @s SelectedItem.tag{tower:remove} run replaceitem entity @s hotbar.3 air

scoreboard players set button_temp int 1