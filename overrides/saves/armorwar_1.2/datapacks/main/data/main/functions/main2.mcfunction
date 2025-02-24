scoreboard players enable @a rc
execute as @e[tag=rctest] at @s unless entity @a[distance=..5] run tp @s ~ ~-1000 ~
scoreboard players add @e[type=arrow,nbt={inGround:1b}] killarrow 1
kill @e[scores={killarrow=4..}]
tag @a[tag=ingame] remove parkour
clear @a minecraft:glass_bottle
tag @a[tag=hall] remove ingame
tag @a[tag=ingame] remove inhall
scoreboard players reset main2 timer
tag @a[x=999,y=50,z=999,distance=..5] remove inhall
execute as @e[type=item,tag=cank] run data modify entity @s Age set value 0
execute if score hall_set int matches 1 unless entity @a[tag=inhall] run function main:hall_remove

kill @e[type=item,tag=]