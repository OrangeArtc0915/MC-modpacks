tag @e remove result

execute facing entity @s feet run tp @e[tag=math_marker,limit=1] ^ ^1.0 ^-0.35
execute facing entity @e[tag=math_marker,limit=1] feet run function play:tower/skills/16-heal/circle
execute facing entity @s feet run tp @e[tag=math_marker,limit=1] ^0.8660 ^-0.5 ^-0.35
execute facing entity @e[tag=math_marker,limit=1] feet run function play:tower/skills/16-heal/circle
execute facing entity @s feet run tp @e[tag=math_marker,limit=1] ^-0.8660 ^-0.5 ^-0.35
execute facing entity @e[tag=math_marker,limit=1] feet run function play:tower/skills/16-heal/circle
execute facing entity @s feet run tp @e[tag=math_marker,limit=1] ^ ^ ^-1.0
execute facing entity @e[tag=math_marker,limit=1] feet run function play:tower/skills/16-heal/circle

execute at @e[tag=result] run particle end_rod ~ ~ ~ 0.0 0.0 0.0 0 1 force @a