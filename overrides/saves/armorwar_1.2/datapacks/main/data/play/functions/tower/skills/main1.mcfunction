scoreboard players add @s timer0 1
scoreboard players add @s timer1 1
scoreboard players add @s timer2 1
execute unless score @s timer3 > @s CD3 run scoreboard players add @s timer3 1
execute unless score @s timer4 > @s CD4 run scoreboard players add @s timer4 1
execute unless score @s timer5 > @s CD5 run scoreboard players add @s timer5 1
scoreboard players add @s soldier_timer 1

execute if score @s CD0 matches 1.. if score @s timer0 > @s CD0 run function play:tower/skills/trigger0
execute if score @s CD1 matches 1.. if score @s timer1 > @s CD1 run function play:tower/skills/trigger1
execute if score @s CD2 matches 1.. if score @s timer2 > @s CD2 run function play:tower/skills/trigger2

execute if score @s CD3 matches 1.. if score @s timer3 > @s CD3 run function play:tower/skills/trigger3
execute if score @s CD4 matches 1.. if score @s timer4 > @s CD4 run function play:tower/skills/trigger4
execute if score @s CD5 matches 1.. if score @s timer5 > @s CD5 run function play:tower/skills/trigger5

execute if score @s soldier_CD matches 1.. if score @s soldier_timer > @s soldier_CD if score @s soldier_count < 1 int run function play:tower/skills/trigger_soldier