execute if entity @a[tag=waiting,scores={select=2}] unless entity @s[tag=waiting,scores={select=2}] run tellraw @s {"text":"你无法选择英雄","color":"red"}
execute unless entity @a[tag=waiting,scores={select=2}] unless score @s hr matches 1.. run tellraw @s {"text":"你尚未选择英雄！","color":"red"}
execute unless entity @a[tag=waiting,scores={select=2}] if score @s hr matches 1.. run scoreboard players set @s select 2
scoreboard players set temp int 0
function maps:upd_skull