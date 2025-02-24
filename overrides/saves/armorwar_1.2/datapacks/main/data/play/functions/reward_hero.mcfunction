scoreboard players set temp1 int 0
execute store result score temp7 int run data get block 0 0 0 Items[0].tag.heroes[0]
execute if score temp7 int matches 1 run scoreboard players add temp1 int 1

execute if score temp1 int matches 0 run data modify block 0 0 0 Items[0].tag.heroes[0] set value 1
execute if score temp1 int matches 1 run data modify block 0 0 0 Items[0].tag.heroes[1] set value 1
execute if score temp1 int matches 2 run data modify block 0 0 0 Items[0].tag.heroes[2] set value 1
execute if score temp1 int matches 3 run data modify block 0 0 0 Items[0].tag.heroes[3] set value 1
execute if score temp1 int matches 4 run data modify block 0 0 0 Items[0].tag.heroes[4] set value 1
execute if score temp1 int matches 5 run data modify block 0 0 0 Items[0].tag.heroes[5] set value 1
execute if score temp1 int matches 6 run data modify block 0 0 0 Items[0].tag.heroes[6] set value 1
execute if score temp1 int matches 7 run data modify block 0 0 0 Items[0].tag.heroes[7] set value 1