scoreboard players set temp int 8597001
execute store result entity @e[tag=lib_skill_item,limit=1] Item.tag.CustomModelData int 1 run scoreboard players operation temp int += lib_skill_p0 int

execute if score lib_skill_p0 int matches 0 run data modify entity @e[tag=lib_skill_text,limit=1] CustomName set value '{"text":"§7<援军>：物理伤害:§c16.0♥§7,血量:§c70.0♥"}'
execute if score lib_skill_p0 int matches 1 run data modify entity @e[tag=lib_skill_text,limit=1] CustomName set value '{"text":"§7<火雨>：大范围杀伤,持续烫伤,击破敌人护甲"}'

execute if score lib_skill_p0 int matches 0 run data modify entity @e[tag=lib_skill_name,limit=1] CustomName set value '{"text":"技能0"}'
execute if score lib_skill_p0 int matches 1 run data modify entity @e[tag=lib_skill_name,limit=1] CustomName set value '{"text":"技能1"}'