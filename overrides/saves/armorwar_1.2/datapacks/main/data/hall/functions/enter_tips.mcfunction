scoreboard players set temp int 0
execute at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 1

scoreboard players add @s tip_id 1
scoreboard players operation @s tip_id %= 13 int