scoreboard players add @s heal_ray 1
execute as @e[tag=soldier,tag=!hero,distance=..25.0,limit=1,sort=random] positioned ~0.5 ~10.5 ~0.5 run function play:tower/skills/16-heal/ray
execute if score @s heal_ray matches 5.. run function play:tower/skills/16-heal/disray