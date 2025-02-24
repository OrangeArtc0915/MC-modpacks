execute store result score @s psp_id store result score @s psp_id0 store result score @s psp_id1 run scoreboard players add id psp_main 1
scoreboard players operation @s psp_id0 %= 10 psp_main
scoreboard players operation @s psp_id1 /= 10 psp_main
execute if score @s psp_id0 matches 0 run data modify storage psp:all 0 append value {}
execute if score @s psp_id0 matches 1 run data modify storage psp:all 1 append value {}
execute if score @s psp_id0 matches 2 run data modify storage psp:all 2 append value {}
execute if score @s psp_id0 matches 3 run data modify storage psp:all 3 append value {}
execute if score @s psp_id0 matches 4 run data modify storage psp:all 4 append value {}
execute if score @s psp_id0 matches 5 run data modify storage psp:all 5 append value {}
execute if score @s psp_id0 matches 6 run data modify storage psp:all 6 append value {}
execute if score @s psp_id0 matches 7 run data modify storage psp:all 7 append value {}
execute if score @s psp_id0 matches 8 run data modify storage psp:all 8 append value {}
execute if score @s psp_id0 matches 9 run data modify storage psp:all 9 append value {}
tag @s add psp_marked