gamemode spectator @s
tp @s @a[tag=decision_maker,limit=1]
scoreboard players set @s[tag=!waiting] spectating 1
execute if entity @s[tag=waiting] if score @s select matches 2 run tellraw @s {"text":"本局禁用英雄","color":"red"}