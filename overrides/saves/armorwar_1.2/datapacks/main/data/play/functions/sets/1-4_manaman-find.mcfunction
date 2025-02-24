scoreboard players set @s CD 200
execute unless entity @s[tag=no_beam] run function play:sets/1-4_manaman-no
execute at @s run tag @e[tag=monster,distance=..20.0] add tmp
execute if entity @e[tag=tmp] run function play:tower/nearest
execute if entity @e[tag=tmp,limit=1] at @s run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 3.0 1.5
scoreboard players operation @s target = @e[tag=tmp,limit=1] muid