scoreboard players set success int 1
execute at @e[tag=soldier,limit=1,sort=nearest,tag=!dead,distance=..20.0] run function play:mon/rat_test1
execute unless entity @e[tag=soldier,tag=!dead,distance=..20.0] run scoreboard players set success int 0

execute if score success int matches 1 at @e[tag=soldier,limit=1,sort=nearest,tag=!dead,distance=..20.0] run function play:mon/rat_cd
execute if score success int matches 0 if entity @s[tag=rattacking] run function play:mon/drattack