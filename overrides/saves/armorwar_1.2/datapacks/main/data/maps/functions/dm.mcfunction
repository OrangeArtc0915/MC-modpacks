execute if entity @a[tag=waiting,scores={select=1}] unless entity @s[tag=waiting,scores={select=1}] run tellraw @s {"text":"你不能成为决策者","color":"red"}
execute unless entity @a[tag=waiting,scores={select=1}] run scoreboard players set @s select 1
scoreboard players set temp int 0
function maps:upd_skull