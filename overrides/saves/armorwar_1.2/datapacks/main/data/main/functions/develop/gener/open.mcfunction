execute at @s run tp @s ~ ~ ~ ~ -25.0

execute at @s positioned ~ ~1.62 ~ run summon item ^1.5 ^ ^1.8 {Tags:["mpar_facing","mpar_custom","menu","tmp"],NoGravity:1b,Item:{id:"minecraft:barrier",Count:1b,tag:{owner:0,buttons:[{cd:10,id:"minecraft:command_block",title:'{"text":"§f怪物波设计"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/open_waves",pos:[0.0,-0.5,0.0]},{cd:10,id:"minecraft:gold_block",title:'{"text":"§f初始金币"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/coin",pos:[1.5,-0.5,0.0],spec:"map_coin_upd"},{cd:10,id:"minecraft:red_concrete",title:'{"text":"§f主城血量"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/g_hp",spec:"map_ghp_upd",pos:[1.5,0.5,0.0]},{cd:10,id:"minecraft:white_concrete",title:'{"text":"§f昼夜时间"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/time",spec:"map_time_upd",pos:[3.0,-0.5,0.0]},{cd:10,id:"minecraft:target",title:'{"text":"§f模拟游戏"}',run_command:"execute as @a[tag=cbutton] at @s run function main:develop/gener/sim",pos:[4.5,-0.5,0.0]}]}}}

execute if score @s making matches 0 store result score temp int run data get block 0 0 0 Items[0].tag.making[0].coin
execute if score @s making matches 1 store result score temp int run data get block 0 0 0 Items[0].tag.making[1].coin
execute if score @s making matches 2 store result score temp int run data get block 0 0 0 Items[0].tag.making[2].coin
execute if score @s making matches 3 store result score temp int run data get block 0 0 0 Items[0].tag.making[3].coin
execute if score @s making matches 4 store result score temp int run data get block 0 0 0 Items[0].tag.making[4].coin
execute if score @s making matches 5 store result score temp int run data get block 0 0 0 Items[0].tag.making[5].coin
execute if score @s making matches 6 store result score temp int run data get block 0 0 0 Items[0].tag.making[6].coin

setblock 0 10 0 air
setblock 0 10 0 oak_sign{Text1:'[{"text":"初始金币:"},{"score":{"name":"temp","objective":"int"}}]'}
data modify entity @e[tag=tmp,limit=1] Item.tag.buttons[1].title set from block 0 10 0 Text1


execute store result entity @e[tag=tmp,limit=1] Item.tag.owner int 1 run scoreboard players get @s mpar_id
tag @e remove tmp

tag @s add map_time_upd
schedule function main:develop/gener/time2 2t