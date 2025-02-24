function tree:updata/aec
execute at @e[tag=result] run setblock ~ ~ ~ air
execute as @e[tag=result] store result score @s y run data get entity @s Pos[1]
execute at @e[tag=result,scores={y=6}] run setblock ~ ~ ~ barrier
kill @e[tag=result]

setblock -3 16 328 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"xiaodou123",rotation:"NONE",posX:0,mode:"LOAD",posY:-11,sizeX:7,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:tree_base",sizeY:4,sizeZ:7,showboundingbox:1b}
setblock -3 17 328 minecraft:redstone_block
setblock -3 16 328 minecraft:air
setblock -3 17 328 minecraft:air