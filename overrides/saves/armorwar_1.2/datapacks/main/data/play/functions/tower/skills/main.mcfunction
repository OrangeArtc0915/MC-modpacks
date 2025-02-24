execute as @e[tag=arrow0] run function play:tower/skills/arrow0
execute at @e[tag=missile_1] positioned ~ ~1.5 ~ run particle flame ~ ~ ~ 0.1 0.1 0.1 0 3 force

execute as @e[tag=magic_ball] at @s positioned ~ ~1.5 ~ run function play:tower/skills/3-ball
execute as @e[tag=magic_ball1] at @s positioned ~ ~1.5 ~ run function play:tower/skills/7-ball
execute as @e[tag=magic_ball2] at @s positioned ~ ~1.5 ~ run function play:tower/skills/11-ball

execute as @e[tag=built,scores={build=15},sort=random] at @s if entity @e[tag=monster,distance=..19.5] run function play:tower/skills/3-circle
execute as @e[tag=built,scores={build=11},sort=random] at @s if entity @e[tag=monster,distance=..19.5] run function play:tower/skills/3-circle
execute as @e[tag=built,scores={build=7},sort=random] at @s if entity @e[tag=monster,distance=..19.5] run function play:tower/skills/3-circle
execute as @e[tag=built,scores={build=3},sort=random] at @s if entity @e[tag=monster,distance=..19.0] run function play:tower/skills/3-circle

execute as @e[tag=3-circle] run function play:tower/skills/3-circle1