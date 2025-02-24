playsound minecraft:entity.zombie.infect player @a ^ ^ ^ 2 0.8
particle dust 0.001 0.5 0.0 0.8 ^ ^-0.3 ^ 0.3 0.3 0.3 0.1 150
scoreboard players operation @s hp -= @s poison_damage
scoreboard players remove @s poison_times 1
execute unless entity @s[tag=boss] run function play:mon/hurt