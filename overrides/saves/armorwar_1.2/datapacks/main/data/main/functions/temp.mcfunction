scoreboard players set x int 0
scoreboard players set y int 0
scoreboard players set z int 0
scoreboard players add r int 5
scoreboard players add d int 5
data merge entity @s {NoGravity:true}
execute if score r int matches 50.. run scoreboard players set r int 0
execute if score d int matches 100.. run scoreboard players set d int 20
execute store result score @s temp run data get entity @s Rotation[1] -1
scoreboard players add @s temp1 0
execute if score @s temp matches -90 run scoreboard players set @s temp1 1
execute if score @s temp matches 90 run scoreboard players set @s temp1 0
execute if score @s temp1 matches 1 run tp @s ~ ~ ~ ~10 ~-5
execute if score @s temp1 matches 0 run tp @s ~ ~ ~ ~-10 ~5
function arc:circle
tag @e[tag=circle] add pixel
function arc:flect
execute at @e[tag=pixel1] run particle end_rod ~ ~ ~ 0 0 0 0 1
kill @e[tag=pixel1]
kill @e[tag=circle]