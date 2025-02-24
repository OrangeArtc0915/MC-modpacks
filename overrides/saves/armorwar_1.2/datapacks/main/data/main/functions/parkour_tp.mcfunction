scoreboard players add @s parkour_fail 1
execute if score @s pkpoint matches 1 run tp @s -9 16 -91
execute if score @s pkpoint matches 2 run tp @s 20 30 -91
execute if score @s pkpoint matches 3 run tp @s 36 9 -141
execute if score @s pkpoint matches 4 run tp @s 8 13 -165
execute if score @s pkpoint matches 5 run tp @s -14 16 -140
execute if score @s pkpoint matches 6 run tp @s -37 15 -123
tag @s remove parkour_tp
scoreboard players reset @s parkour_rc
clear @s carrot_on_a_stick
give @s carrot_on_a_stick{display:{Name:'{"text":"§f返回记录点"}',Lore:['{"text":"§4按右键使用"}']},CustomModelData:-1}
scoreboard players set @s dropbarrier 0