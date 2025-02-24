execute if data entity @s ArmorItems[3].tag.tower_type if entity @e[tag=built] run function play:chal/tower_type
execute if data entity @s ArmorItems[3].tag.towers run function play:chal/towers
execute if data entity @s ArmorItems[3].tag.hero run function play:chal/hero

execute if score @s int matches 0 run kill @s