scoreboard players remove @s heal_timer 1
execute if score @s heal_timer matches ..0 if score @s hp < @s mhp run function play:sold/heal