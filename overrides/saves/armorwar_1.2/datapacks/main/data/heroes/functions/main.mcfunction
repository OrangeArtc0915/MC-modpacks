execute as @a[tag=hring] run function heroes:gui

execute as @e[tag=hero_as,tag=!hero_reached] at @s if entity @a[distance=..2.0] run function heroes:reach
execute as @e[tag=hero_as,tag=hero_reached] at @s unless entity @a[distance=..2.0] run function heroes:dereach

execute unless entity @a[tag=hring] run function heroes:end