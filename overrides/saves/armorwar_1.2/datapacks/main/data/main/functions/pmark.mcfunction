#main:pmark
scoreboard players set @s hall 2
scoreboard players set @s parkour_min 2147483647
scoreboard players add pmark int 1
scoreboard players operation @s pmark = pmark int
tag @s add pmarked
tp @s 0 5 0
gamemode adventure @s