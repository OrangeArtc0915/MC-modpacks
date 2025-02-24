execute if score @s if_rat matches 1 unless score @s ctimer matches 1.. at @s run function play:mon/rat_test
execute if score @s speed matches 1 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.03
execute if score @s speed matches 2 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.06
execute if score @s speed matches 3 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.09
execute if score @s speed matches 4 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.12
execute if score @s speed matches 5 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.15
execute if score @s speed matches 6 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.18
execute if score @s speed matches 7 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.21
execute if score @s speed matches 8 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.24
execute if score @s speed matches 9 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.27
execute if score @s speed matches 10 at @s rotated ~ 0.0 run tp @s ^ ^ ^0.30

execute at @s run tp @e[tag=math_marker,limit=1] ~ ~ ~
data modify entity @e[tag=math_marker,limit=1] Pos[1] set from block 0 0 0 Items[0].tag.playing.tag.map_pos[1]

execute at @e[tag=math_marker,limit=1] at @e[tag=mpoint,distance=..3.0] if score @e[tag=mpoint,distance=..3.0,limit=1,sort=nearest] int = @s facing run function play:mon/facing

execute if score @s game_h < @s fly_h at @s run function play:mon/fly_up