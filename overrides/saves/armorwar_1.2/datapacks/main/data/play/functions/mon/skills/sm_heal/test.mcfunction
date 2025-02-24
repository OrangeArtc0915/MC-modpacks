scoreboard players operation temp int = @s mhp
scoreboard players operation temp int /= 2 int
execute if score @s hp <= temp int at @s if entity @e[tag=monster,distance=0.1..4.5] run function play:mon/skills/sm_heal/trigger