execute as @a[tag=tmp,limit=1] at @s run playsound minecraft:block.note_block.bass player @a ~ ~ ~ 1 2
data modify entity @s Glowing set value 0b

execute if entity @s[tag=map_left] run function maps:left
execute if entity @s[tag=map_right] run function maps:right
#execute if entity @s[tag=map_chapter] run function maps:upd
execute if entity @s[tag=map_level] run function maps:level