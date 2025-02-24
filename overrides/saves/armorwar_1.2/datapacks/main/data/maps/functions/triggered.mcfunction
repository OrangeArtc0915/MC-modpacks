data modify entity @s Glowing set value 1b
tag @a[tag=waiting,tag=choice_maker,limit=1] add tmp

execute if score @a[tag=tmp,limit=1] shift matches 1.. if entity @s[tag=map_level] run function maps:dsp_level

scoreboard players set temp int 0
execute if score @a[tag=tmp,limit=1] crc matches 1.. run scoreboard players set temp int 1
execute if score temp int matches 1 run function maps:run
tag @a remove tmp