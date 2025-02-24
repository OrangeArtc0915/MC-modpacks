scoreboard players set temp int 0
execute at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 1
scoreboard players add @s music_box 1
scoreboard players operation @s music_box %= 2 int
execute if score @s music_box matches 0 run function music:clear
execute if score @s music_box matches 1 run function hall:music_on