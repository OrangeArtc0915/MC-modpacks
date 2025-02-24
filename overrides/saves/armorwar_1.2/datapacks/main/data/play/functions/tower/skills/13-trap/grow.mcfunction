scoreboard players add @s int 1
execute if score @s int matches 1 unless entity @e[tag=map_tower,distance=..6.4] run function play:tower/skills/13-trap/grow1
execute if score @s int matches 2 run function play:tower/skills/13-trap/grow2
execute if score @s int matches 3 run function play:tower/skills/13-trap/grow3
playsound minecraft:block.wood.place player @a ~ ~ ~ 2 1.0