tag @s add tmp55
execute unless entity @e[tag=monster,tag=!tmp55] unless entity @e[tag=wave_spawning] run function mobs:boss1/summon
tag @s remove tmp55