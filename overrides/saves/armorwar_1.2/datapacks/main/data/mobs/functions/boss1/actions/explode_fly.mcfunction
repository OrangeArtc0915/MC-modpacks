tag @s remove rigid_link
data modify entity @s NoGravity set value 0b

scoreboard players set min int -600
scoreboard players set max int 600
function math:random
execute store result entity @s Motion[0] double 0.002 run scoreboard players get random int
function math:random
execute store result entity @s Motion[2] double 0.002 run scoreboard players get random int

scoreboard players set min int 100
scoreboard players set max int 500
function math:random
execute store result entity @s Motion[1] double 0.001 run scoreboard players get random int