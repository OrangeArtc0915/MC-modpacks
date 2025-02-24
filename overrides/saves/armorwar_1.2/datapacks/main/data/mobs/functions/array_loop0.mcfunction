data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.mobs
execute store result score temp int run data get entity @s ArmorItems[3].tag.array[0].id
scoreboard players remove temp int 1
execute if score temp int matches 1.. run function mobs:array_loop1

data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.ctmp[0].entity
data modify block 0 0 0 Items[0].tag.ctmp.spawn.pos set from entity @s Pos
data modify block 0 0 0 Items[0].tag.ctmp.spawn.rotation set from entity @s Rotation
data modify block 0 0 0 Items[0].tag.ctmp.spawn.name set from entity @s CustomName
data modify block 0 0 0 Items[0].tag.ctmp.spawn.paths set value []
data modify block 0 0 0 Items[0].tag.ctmp.spawn.paths append from entity @s ArmorItems[3].tag.path
data modify block 0 0 0 Items[0].tag.ctmp.spec set value []
data modify block 0 0 0 Items[0].tag.ctmp.spec append value "phb_visible"

execute store result score u int run data get entity @s ArmorItems[3].tag.array[0].uv[0] 10000
execute store result score v int run data get entity @s ArmorItems[3].tag.array[0].uv[1] 10000

scoreboard players operation p0 int = p0- int
scoreboard players operation p1 int = p1- int
scoreboard players operation p2 int = p2- int
scoreboard players operation u0 int = u0- int
scoreboard players operation u1 int = u1- int
scoreboard players operation u2 int = u2- int
scoreboard players operation v0 int = v0- int
scoreboard players operation v1 int = v1- int
scoreboard players operation v2 int = v2- int

scoreboard players operation u0 int *= u int
scoreboard players operation u0 int /= 10000 int
scoreboard players operation u1 int *= u int
scoreboard players operation u1 int /= 10000 int
scoreboard players operation u2 int *= u int
scoreboard players operation u2 int /= 10000 int

scoreboard players operation v0 int *= v int
scoreboard players operation v0 int /= 10000 int
scoreboard players operation v1 int *= v int
scoreboard players operation v1 int /= 10000 int
scoreboard players operation v2 int *= v int
scoreboard players operation v2 int /= 10000 int

scoreboard players operation p0 int += u0 int
execute store result block 0 0 0 Items[0].tag.ctmp.spawn.pos[0] double 0.0001 run scoreboard players operation p0 int += v0 int

scoreboard players operation p1 int += u1 int
execute store result block 0 0 0 Items[0].tag.ctmp.spawn.pos[1] double 0.0001 run scoreboard players operation p1 int += v1 int

scoreboard players operation p2 int += u2 int
execute store result block 0 0 0 Items[0].tag.ctmp.spawn.pos[2] double 0.0001 run scoreboard players operation p2 int += v2 int

summon item 0.0 11.0 0.0 {Tags:["scheduler.item","tmp7"],Item:{id:"minecraft:glass",Count:1b,tag:{time:5,uuid:[],command:"execute as @e[tag=scheduler.mark] run function mobs:array_loop2"}}}
data modify entity @e[tag=tmp7,limit=1] Item.tag.uuid set from entity @e[tag=tmp7,limit=1] UUID
data modify entity @e[tag=tmp7,limit=1] Item.tag.data set from block 0 0 0 Items[0].tag.ctmp
tag @e remove tmp7

data remove entity @s ArmorItems[3].tag.array[0]

scoreboard players set @s unmove 5