replaceitem entity @s weapon.offhand air
execute at @s run summon item ~ ~2.0 ~ {Item:{id:"minecraft:panda_spawn_egg",Count:1b,tag:{item:"develop_gener",EntityTag:{id:"minecraft:shulker",Color:0,CustomName:"\"design\"",CustomNameVisible:1,NoGravity:1b,Silent:1,Invulnerable:1,NoAI:true,Tags:[map_gener]},display:{Name:"\"§f关卡总体设计\""}}},Tags:["tmp"]}
execute store result entity @e[tag=tmp,limit=1] Item.tag.EntityTag.Color byte 1 run scoreboard players get @s making
tag @e remove tmp
tellraw @s {"text":"\n已设置朝向","color":"yellow"}
execute at @s run playsound minecraft:block.note_block.bass player @s

execute if score @s making matches 0 run data modify block 0 0 0 Items[0].tag.making[0].rotation set from entity @s Rotation
execute if score @s making matches 1 run data modify block 0 0 0 Items[0].tag.making[1].rotation set from entity @s Rotation
execute if score @s making matches 2 run data modify block 0 0 0 Items[0].tag.making[2].rotation set from entity @s Rotation
execute if score @s making matches 3 run data modify block 0 0 0 Items[0].tag.making[3].rotation set from entity @s Rotation
execute if score @s making matches 4 run data modify block 0 0 0 Items[0].tag.making[4].rotation set from entity @s Rotation
execute if score @s making matches 5 run data modify block 0 0 0 Items[0].tag.making[5].rotation set from entity @s Rotation
execute if score @s making matches 6 run data modify block 0 0 0 Items[0].tag.making[6].rotation set from entity @s Rotation

tellraw @s {"text":"\n已设置坐标","color":"yellow"}
execute if score @s making matches 0 run data modify block 0 0 0 Items[0].tag.making[0].tag.map_pos set from entity @s Pos
execute if score @s making matches 1 run data modify block 0 0 0 Items[0].tag.making[1].tag.map_pos set from entity @s Pos
execute if score @s making matches 2 run data modify block 0 0 0 Items[0].tag.making[2].tag.map_pos set from entity @s Pos
execute if score @s making matches 3 run data modify block 0 0 0 Items[0].tag.making[3].tag.map_pos set from entity @s Pos
execute if score @s making matches 4 run data modify block 0 0 0 Items[0].tag.making[4].tag.map_pos set from entity @s Pos
execute if score @s making matches 5 run data modify block 0 0 0 Items[0].tag.making[5].tag.map_pos set from entity @s Pos
execute if score @s making matches 6 run data modify block 0 0 0 Items[0].tag.making[6].tag.map_pos set from entity @s Pos

tellraw @s {"text":"\n已设置区块加载","color":"yellow"}
scoreboard players set @e[tag=map_point] color 7
execute as @e[tag=map_point] if data entity @s Color store result score @s color run data get entity @s Color
scoreboard players operation temp int = @s making
execute as @e[tag=map_point] if score @s color = temp int run tag @s add tmp9

execute as @e[tag=tmp9] store result score @s x run data get entity @s Pos[0]
execute as @e[tag=tmp9] store result score @s z run data get entity @s Pos[2]

data modify block 0 0 0 Items[0].tag.ctmp set value [0.0d,0.0d,0.0d]
data modify block 0 0 0 Items[0].tag.ctmp[1] set from entity @e[tag=tmp9,limit=1] Pos[1]

scoreboard players set min int 2147483647
execute store result block 0 0 0 Items[0].tag.ctmp[0] double 1 run scoreboard players operation min int < @e[tag=tmp9] x
scoreboard players set min int 2147483647
execute store result block 0 0 0 Items[0].tag.ctmp[2] double 1 run scoreboard players operation min int < @e[tag=tmp9] z
execute if score @s making matches 0 run data modify block 0 0 0 Items[0].tag.making[0].pos0 set from block 0 0 0 Items[0].tag.ctmp
execute if score @s making matches 1 run data modify block 0 0 0 Items[0].tag.making[1].pos0 set from block 0 0 0 Items[0].tag.ctmp
execute if score @s making matches 2 run data modify block 0 0 0 Items[0].tag.making[2].pos0 set from block 0 0 0 Items[0].tag.ctmp
execute if score @s making matches 3 run data modify block 0 0 0 Items[0].tag.making[3].pos0 set from block 0 0 0 Items[0].tag.ctmp
execute if score @s making matches 4 run data modify block 0 0 0 Items[0].tag.making[4].pos0 set from block 0 0 0 Items[0].tag.ctmp
execute if score @s making matches 5 run data modify block 0 0 0 Items[0].tag.making[5].pos0 set from block 0 0 0 Items[0].tag.ctmp
execute if score @s making matches 6 run data modify block 0 0 0 Items[0].tag.making[6].pos0 set from block 0 0 0 Items[0].tag.ctmp

scoreboard players set max int -2147483648
execute store result block 0 0 0 Items[0].tag.ctmp[0] double 1 run scoreboard players operation max int > @e[tag=tmp9] x
scoreboard players set max int -2147483648
execute store result block 0 0 0 Items[0].tag.ctmp[2] double 1 run scoreboard players operation max int > @e[tag=tmp9] z
execute if score @s making matches 0 run data modify block 0 0 0 Items[0].tag.making[0].pos1 set from block 0 0 0 Items[0].tag.ctmp
execute if score @s making matches 1 run data modify block 0 0 0 Items[0].tag.making[1].pos1 set from block 0 0 0 Items[0].tag.ctmp
execute if score @s making matches 2 run data modify block 0 0 0 Items[0].tag.making[2].pos1 set from block 0 0 0 Items[0].tag.ctmp
execute if score @s making matches 3 run data modify block 0 0 0 Items[0].tag.making[3].pos1 set from block 0 0 0 Items[0].tag.ctmp
execute if score @s making matches 4 run data modify block 0 0 0 Items[0].tag.making[4].pos1 set from block 0 0 0 Items[0].tag.ctmp
execute if score @s making matches 5 run data modify block 0 0 0 Items[0].tag.making[5].pos1 set from block 0 0 0 Items[0].tag.ctmp
execute if score @s making matches 6 run data modify block 0 0 0 Items[0].tag.making[6].pos1 set from block 0 0 0 Items[0].tag.ctmp

tag @e remove tmp9