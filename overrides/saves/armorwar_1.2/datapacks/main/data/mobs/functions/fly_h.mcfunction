scoreboard players set min int 90
scoreboard players set max int 100
function math:random
scoreboard players operation @s fly_h = random int
execute store result score random int run data get block 0 0 0 Items[0].tag.playing.tag.map_pos[1] 10
scoreboard players operation @s fly_h += random int
execute store result score @s game_h run data get entity @s Pos[1] 10