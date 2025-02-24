execute as @a[tag=waiting] run function maps:gui

execute as @a[tag=waiting,scores={select=1}] unless score @s shift matches 1.. run title @s actionbar [{"text":"你将成为<"},{"text":"决策者","color":"dark_green"},{"text":">"}]
execute as @a[tag=waiting,scores={select=2}] unless score @s shift matches 1.. run title @s actionbar [{"text":"你将成为<"},{"text":"英雄","color":"gold"},{"text":">"}]
execute as @a[tag=waiting,scores={select=3}] unless score @s shift matches 1.. run title @s actionbar [{"text":"你将成为<"},{"text":"旁观者","color":"gray"},{"text":">"}]

execute as @a[tag=waiting,tag=choice_maker,limit=1] at @s positioned ~ ~1.62 ~ as @e[tag=map_button,sort=nearest] unless score @s ctimer matches 1.. run function maps:button

execute unless entity @a[tag=waiting] run function maps:end

execute as @e[tag=map_turn_left] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=map_turn_right] at @s run tp @s ~ ~ ~ ~-3 ~

execute as @e[tag=map_motion] run function maps:motion

execute if entity @a[tag=waiting,scores={select=1}] if entity @e[tag=map_ai] as @e[tag=map_ai] run function maps:ai_remove
execute unless entity @a[tag=waiting,scores={select=1}] unless entity @e[tag=map_ai] run function maps:ai_summon

execute as @e[tag=map_ai] run function maps:ai

execute store result score temp int run data get block 0 0 0 Items[0].tag.map_levels
execute if score temp int matches 1.. run function maps:summon_level