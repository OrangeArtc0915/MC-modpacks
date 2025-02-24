scoreboard players remove waves_page int 1
execute if score @s making matches 0 store result score temp int run data get block 0 0 0 Items[0].tag.making[0].waves
execute if score @s making matches 1 store result score temp int run data get block 0 0 0 Items[0].tag.making[1].waves
execute if score @s making matches 2 store result score temp int run data get block 0 0 0 Items[0].tag.making[2].waves
execute if score @s making matches 3 store result score temp int run data get block 0 0 0 Items[0].tag.making[3].waves
execute if score @s making matches 4 store result score temp int run data get block 0 0 0 Items[0].tag.making[4].waves
execute if score @s making matches 5 store result score temp int run data get block 0 0 0 Items[0].tag.making[5].waves
execute if score @s making matches 6 store result score temp int run data get block 0 0 0 Items[0].tag.making[6].waves
scoreboard players remove temp int 1
scoreboard players operation temp int > 0 int
execute if score waves_page int matches ..-1 run scoreboard players operation waves_page int = temp int