scoreboard players operation @s value_2 *= 15 int
scoreboard players operation @e[tag=monster,distance=..3.6] pdamage += @s value_2
scoreboard players operation @s value_2 /= 15 int
scoreboard players set @e[tag=monster,distance=..3.6] true_damage 1
playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 4.0 0.5
scoreboard players set @s timer5 0

execute positioned ~1.0 ~0.1 ~1.0 run function play:tower/skills/16-wave/anvil
execute positioned ~-1.0 ~0.1 ~1.0 run function play:tower/skills/16-wave/anvil
execute positioned ~1.0 ~0.1 ~-1.0 run function play:tower/skills/16-wave/anvil
execute positioned ~-1.0 ~0.1 ~-1.0 run function play:tower/skills/16-wave/anvil