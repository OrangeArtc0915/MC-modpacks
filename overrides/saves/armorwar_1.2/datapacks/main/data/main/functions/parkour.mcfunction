execute as @a[tag=parkour,x=20,y=29,z=-91,distance=..3] at @s if block ~ ~ ~ heavy_weighted_pressure_plate run scoreboard players set @s pkpoint 2
execute as @a[tag=parkour,x=38,y=28,z=-140,distance=..3] at @s if block ~ ~ ~ heavy_weighted_pressure_plate run scoreboard players set @s pkpoint 3
execute as @a[tag=parkour,x=36,y=8,z=-141,distance=..3] at @s if block ~ ~ ~ heavy_weighted_pressure_plate run scoreboard players set @s pkpoint 3
execute as @a[tag=parkour,x=8,y=12,z=-165,distance=..3] at @s if block ~ ~ ~ heavy_weighted_pressure_plate run scoreboard players set @s pkpoint 4
execute as @a[tag=parkour,x=-14,y=15,z=-140,distance=..3] at @s if block ~ ~ ~ heavy_weighted_pressure_plate run scoreboard players set @s pkpoint 5
execute as @a[tag=parkour,x=-37,y=15,z=-123,distance=..3] at @s if block ~ ~ ~ heavy_weighted_pressure_plate run scoreboard players set @s pkpoint 6


scoreboard players add @a[tag=parkour] parkour_timer 1

effect give @a[tag=parkour] minecraft:resistance 1 4 true
effect give @a[tag=parkour] minecraft:saturation 1 1 true

execute as @a[scores={dropbarrier=1..},tag=parkour] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}},distance=..3]
clear @a[scores={dropbarrier=1..},tag=parkour]
give @a[scores={dropbarrier=1..},tag=parkour] barrier{display:{Name:"\"§b我选择放弃\"",Lore:["\"§f按F食用\""]},back:true} 1
tellraw @a[scores={dropbarrier=1..},tag=parkour] {"text":"请不要丢掉屏障！","color":"red"}
scoreboard players reset @a dropbarrier

execute as @a[tag=parkour] at @s run effect give @s[y=-10,distance=..5] minecraft:resistance 5 5 true
execute as @a[tag=parkour] at @s run effect give @s[scores={health=..5}] minecraft:resistance 5 5 true

execute as @a[tag=parkour] at @s run tag @s[scores={pkpoint=2,health=..5}] remove jwpassed
execute as @a[tag=parkour] at @s run tag @s[y=-10,distance=..3,scores={pkpoint=2}] remove jwpassed

execute as @a[tag=parkour] store result score @s y run data get entity @s Pos[1] 10000
tag @a[tag=parkour,scores={y=..-1}] add parkour_tp

execute as @a[tag=parkour] at @s run tag @s[scores={health=..5}] add parkour_tp
execute as @a[tag=parkour,tag=parkour_tp] at @s run function main:parkour_tp
execute as @a[tag=parkour,x=-14,y=15,z=-104,distance=..5] at @s if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run clear @s barrier
execute as @a[tag=parkour,x=-14,y=15,z=-104,distance=..5] at @s if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run function main:parkour_end
execute as @a[tag=parkour,x=-14,y=15,z=-104,distance=..5] at @s if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run tp @s 0 5 0
effect give @a[x=35,y=2,z=-124,distance=..8] minecraft:resistance 5 5 true
execute as @a[tag=parkour,x=35,y=2,z=-124,distance=..8] at @s if block ~ ~ ~ water run tag @s add jwpassed
execute as @a[tag=parkour,x=35,y=2,z=-124,distance=..8,tag=!jwpassed,nbt={OnGround:1b}] at @s run function main:parkour_tp
execute as @a[tag=parkour,scores={parkour_rc=1..}] at @s run function main:parkour_tp