scoreboard players set temp int 0

execute if score @s making matches 0 unless data block 0 0 0 Items[0].tag.making[0].waves[0] run scoreboard players set temp int 1
execute if score @s making matches 1 unless data block 0 0 0 Items[0].tag.making[1].waves[0] run scoreboard players set temp int 1
execute if score @s making matches 2 unless data block 0 0 0 Items[0].tag.making[2].waves[0] run scoreboard players set temp int 1
execute if score @s making matches 3 unless data block 0 0 0 Items[0].tag.making[3].waves[0] run scoreboard players set temp int 1
execute if score @s making matches 4 unless data block 0 0 0 Items[0].tag.making[4].waves[0] run scoreboard players set temp int 1
execute if score @s making matches 5 unless data block 0 0 0 Items[0].tag.making[5].waves[0] run scoreboard players set temp int 1
execute if score @s making matches 6 unless data block 0 0 0 Items[0].tag.making[6].waves[0] run scoreboard players set temp int 1


execute if score @s making matches 0 run data modify block 0 0 0 Items[0].tag.making[0].waves append value {}
execute if score @s making matches 1 run data modify block 0 0 0 Items[0].tag.making[1].waves append value {}
execute if score @s making matches 2 run data modify block 0 0 0 Items[0].tag.making[2].waves append value {}
execute if score @s making matches 3 run data modify block 0 0 0 Items[0].tag.making[3].waves append value {}
execute if score @s making matches 4 run data modify block 0 0 0 Items[0].tag.making[4].waves append value {}
execute if score @s making matches 5 run data modify block 0 0 0 Items[0].tag.making[5].waves append value {}
execute if score @s making matches 6 run data modify block 0 0 0 Items[0].tag.making[6].waves append value {}

execute if score temp int matches 1 at @s run function main:develop/gener/open_waves

execute if score @s making matches 0 store result score temp int run data get block 0 0 0 Items[0].tag.making[0].waves
execute if score @s making matches 1 store result score temp int run data get block 0 0 0 Items[0].tag.making[1].waves
execute if score @s making matches 2 store result score temp int run data get block 0 0 0 Items[0].tag.making[2].waves
execute if score @s making matches 3 store result score temp int run data get block 0 0 0 Items[0].tag.making[3].waves
execute if score @s making matches 4 store result score temp int run data get block 0 0 0 Items[0].tag.making[4].waves
execute if score @s making matches 5 store result score temp int run data get block 0 0 0 Items[0].tag.making[5].waves
execute if score @s making matches 6 store result score temp int run data get block 0 0 0 Items[0].tag.making[6].waves

execute store result score waves_page int run scoreboard players remove temp int 1