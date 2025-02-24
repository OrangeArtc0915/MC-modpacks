scoreboard players add @s heal_test 1

execute if score @s heal_test matches 1 run function play:hr/heal_pos0
execute if score @s heal_test matches 10 run function play:hr/heal_pos1

execute if score @s heal_test matches 10.. run scoreboard players set @s heal_test 0