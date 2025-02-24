scoreboard players operation temp int = @s int
execute as @e[tag=block_changer] if score @s int = temp int run kill @s
setblock ~ ~1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-6,mode:"LOAD",posY:-1,sizeX:13,posZ:-6,integrity:1.0f,showair:0b,name:"minecraft:air",sizeY:15,sizeZ:13,showboundingbox:1b}
setblock ~ ~2 ~ redstone_block


function play:tower/set

scoreboard players set @s soldier_CD 0
scoreboard players set @s soldier_count 0

execute as @a[tag=player] at @s run playsound minecraft:entity.horse.armor player @s ~ ~ ~

scoreboard players operation stemp int = @s int
execute as @e[tag=builder] if score @s builtid = stemp int run kill @s