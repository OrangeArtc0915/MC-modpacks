scoreboard players operation @s hp > 0 int
effect give @s minecraft:instant_damage 1 0 true
function play:hr/upd_hp
execute if score @s hp matches 0 run function play:hr/die