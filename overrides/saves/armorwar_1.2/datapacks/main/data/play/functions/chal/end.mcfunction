execute if data entity @s ArmorItems[3].tag.stars if score chal_stars int < chal_stars_r int run scoreboard players set @s int 0

execute if score game_win int matches 0 run scoreboard players set @s int 0

execute if score @s int matches 1 run function play:chal/win