scoreboard players add mapid int 1
execute store result score temp1 int run scoreboard players operation temp int = mapid int
scoreboard players operation temp1 int %= 858 int
scoreboard players operation temp int *= 500 int
scoreboard players operation temp1 int *= 500 int
scoreboard players remove temp int 214500
scoreboard players add temp1 int 500
summon area_effect_cloud 0.0 5.0 0.0 {Tags:["tmp"]}
execute as @e[tag=tmp] run function main:dpoint1
execute store result block 0 0 0 Items[0].tag.making.id int 1 run scoreboard players get mapid int