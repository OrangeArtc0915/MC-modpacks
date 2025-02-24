execute unless score @s skill_0 matches 1 run scoreboard players add @s CD 3
execute if score @s CD matches 200.. run scoreboard players set @s skill_0 1

execute if score @s skill_0 matches 0 unless entity @s[tag=no_beam] run function play:sets/1-4_manaman-no
execute if score @s skill_0 matches 1 run function play:sets/1-4_manaman-cast