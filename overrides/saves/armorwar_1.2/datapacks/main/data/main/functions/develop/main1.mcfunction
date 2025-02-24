execute if entity @a[scores={making=0}] run function main:develop/path/upd0
execute if entity @a[scores={making=1}] run function main:develop/path/upd1
execute if entity @a[scores={making=2}] run function main:develop/path/upd2
execute if entity @a[scores={making=3}] run function main:develop/path/upd3
execute if entity @a[scores={making=4}] run function main:develop/path/upd4
execute if entity @a[scores={making=5}] run function main:develop/path/upd5
execute if entity @a[scores={making=6}] run function main:develop/path/upd6


execute if entity @a[scores={making=0}] run function main:develop/end/up0
execute if entity @a[scores={making=1}] run function main:develop/end/up1
execute if entity @a[scores={making=2}] run function main:develop/end/up2
execute if entity @a[scores={making=3}] run function main:develop/end/up3
execute if entity @a[scores={making=4}] run function main:develop/end/up4
execute if entity @a[scores={making=5}] run function main:develop/end/up5
execute if entity @a[scores={making=6}] run function main:develop/end/up6

execute if entity @a[scores={making=0}] run function main:develop/tower/up0
execute if entity @a[scores={making=1}] run function main:develop/tower/up1
execute if entity @a[scores={making=2}] run function main:develop/tower/up2
execute if entity @a[scores={making=3}] run function main:develop/tower/up3
execute if entity @a[scores={making=4}] run function main:develop/tower/up4
execute if entity @a[scores={making=5}] run function main:develop/tower/up5
execute if entity @a[scores={making=6}] run function main:develop/tower/up6

execute if entity @a[scores={making=0}] run function main:develop/spoint/up0
execute if entity @a[scores={making=1}] run function main:develop/spoint/up1
execute if entity @a[scores={making=2}] run function main:develop/spoint/up2
execute if entity @a[scores={making=3}] run function main:develop/spoint/up3
execute if entity @a[scores={making=4}] run function main:develop/spoint/up4
execute if entity @a[scores={making=5}] run function main:develop/spoint/up5
execute if entity @a[scores={making=6}] run function main:develop/spoint/up6

execute as @e[tag=map_point] at @s run function main:develop/point_test
tag @e remove tmp

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{item:"develop_paths"}}]}] at @s run function main:develop/paths

scoreboard players reset developer_tick int

execute as @e[tag=map_mob_display] at @s unless entity @e[tag=map_mob_show] run function mobs:die