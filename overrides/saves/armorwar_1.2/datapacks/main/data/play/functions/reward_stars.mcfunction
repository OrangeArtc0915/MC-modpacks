scoreboard players set star_temp int 0
execute if score g_hp int matches 1.. run scoreboard players add star_temp int 1
execute if score g_hp int matches 5.. run scoreboard players add star_temp int 1
execute if score g_hp int matches 18.. run scoreboard players add star_temp int 1

data modify block 0 0 0 Items[0].tag.ctmp set value []
scoreboard players set loop int 0
execute if score loop int < star_index int run function play:reward_stars0
execute store result score temp int run data get block 0 0 0 Items[0].tag.stars[0]
execute store result block 0 0 0 Items[0].tag.stars[0] int 1 run scoreboard players operation star_temp int > temp int
scoreboard players set loop int 0
execute if score loop int < star_index int run function play:reward_stars1

scoreboard players operation stars int += star_temp int