


scoreboard players add @s arrow_type 1
execute if score @s arrow_type matches 4.. run scoreboard players set @s arrow_type 1
execute if score gaming int matches 1 at @s run playsound minecraft:block.lever.click player @s ~ ~ ~ 1 2

replaceitem entity @s hotbar.1 air
replaceitem entity @s hotbar.1 stone
function play:hr/items/2_arrow