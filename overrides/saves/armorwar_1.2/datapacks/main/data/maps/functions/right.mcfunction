scoreboard players add chapter_select int 1
schedule function maps:upd 11t
data modify entity @e[tag=map_right,limit=1] Motion set value [0.15d,0.0d,-0.15d]
data modify entity @e[tag=map_mid,limit=1] Motion set value [0.15d,0.0d,0.15d]
data modify entity @e[tag=map_left,limit=1] Motion set value [0.15d,0.0d,0.15d]
tag @e[tag=map_chapter] remove map_button
tag @e[tag=map_chapter] add map_turn_left
execute as @e[tag=map_chapter] store result score @s vx run data get entity @s Motion[0] 100
execute as @e[tag=map_chapter] store result score @s vy run data get entity @s Motion[1] 100
execute as @e[tag=map_chapter] store result score @s vz run data get entity @s Motion[2] 100
tag @e[tag=map_chapter] add map_motion