tp @e[tag=map_set] 0 -1000 0
kill @e[tag=map_set]

scoreboard players set @a[tag=waiting,scores={tutor=1..}] tutor -1
tellraw @a[tag=waiting] {"text":"请稍候...","color":"green"}
setblock 196 48 27 minecraft:red_wool
setblock 196 48 26 minecraft:red_wool

setblock 178 48 26 minecraft:red_wool
setblock 178 48 27 minecraft:red_wool
setblock 178 48 28 minecraft:red_wool

gamemode spectator @a[tag=waiting]
tag @a[tag=waiting] remove inhall
clear @a[tag=waiting]
effect give @a[tag=waiting] minecraft:blindness 6 1 true
data modify block 0 0 0 Items[0].tag.map-selected set from entity @s Item.tag.level

execute unless entity @a[tag=inhall] run kill @e[tag=hall_set]

execute store result score input int run data get block 0 0 0 Items[0].tag.map-selected.time
function main:time

execute as @e[tag=math_marker,limit=1] run function maps:tp
scoreboard players set random_d int 0
schedule function play:start 6s

scoreboard players set waiting int 0
kill @e[tag=map_set]

execute store result score x_min int run data get block 0 0 0 Items[0].tag.map-selected.pos0[0] 10
execute store result score x_max int run data get block 0 0 0 Items[0].tag.map-selected.pos1[0] 10
execute if score x_max int < x_min int run scoreboard players operation x_max int >< x_min int

execute store result score z_min int run data get block 0 0 0 Items[0].tag.map-selected.pos0[2] 10
execute store result score z_max int run data get block 0 0 0 Items[0].tag.map-selected.pos1[2] 10
execute if score z_max int < z_min int run scoreboard players operation z_max int >< z_min int

execute as @a[tag=waiting,scores={music_box=1}] run function music:clear
execute as @a[tag=waiting] at @s run playsound minecraft:entity.player.levelup player @s

scoreboard players set xdcf.remove int 0
function xdcf:main

kill @e[tag=monster]
kill @e[tag=soldier]

data modify block 0 0 0 Items[0].tag.playing set from block 0 0 0 Items[0].tag.map-selected
function play:point

execute as @e[tag=map_tower] run function play:tower/set
execute as @e[tag=map_tower] at @s run function play:tower/build/remove

execute at @e[tag=map_tower] run setblock ~ ~ ~ stone