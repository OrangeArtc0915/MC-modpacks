scoreboard players operation temp1 int = build int
data modify block 0 0 0 Items[0].tag.ttmp set from block 0 0 0 Items[0].tag.towers
scoreboard players remove temp1 int 1
execute if score temp1 int matches 1.. run function play:tower/build/loop
summon armor_stand 0 11 0 {Invisible:1b,Marker:1b,Tags:["tmp","stimer"],NoGravity:1b}

execute store result score @e[tag=tmp,limit=1] size0 run data get block 0 0 0 Items[0].tag.ttmp[0].size[0]
execute store result score @e[tag=tmp,limit=1] size1 run data get block 0 0 0 Items[0].tag.ttmp[0].size[1]
execute store result score @e[tag=tmp,limit=1] size2 run data get block 0 0 0 Items[0].tag.ttmp[0].size[2]

execute store result score @e[tag=tmp,limit=1] from0 run data get block 0 0 0 Items[0].tag.ttmp[0].pos[0]
execute store result score @e[tag=tmp,limit=1] from1 run data get block 0 0 0 Items[0].tag.ttmp[0].pos[1]
execute store result score @e[tag=tmp,limit=1] from2 run data get block 0 0 0 Items[0].tag.ttmp[0].pos[2]

scoreboard players operation @e[tag=tmp,limit=1] to0 = buildx int
scoreboard players operation @e[tag=tmp,limit=1] to1 = buildy int
scoreboard players operation @e[tag=tmp,limit=1] to2 = buildz int

scoreboard players remove @e[tag=tmp,limit=1] to0 5
scoreboard players remove @e[tag=tmp,limit=1] to2 5

scoreboard players operation @e[tag=tmp,limit=1] to0 /= 10 int
scoreboard players operation @e[tag=tmp,limit=1] to1 /= 10 int
scoreboard players operation @e[tag=tmp,limit=1] to2 /= 10 int

scoreboard players operation @e[tag=tmp,limit=1] from0 += @e[tag=tmp,limit=1] size0
scoreboard players operation @e[tag=tmp,limit=1] from2 += @e[tag=tmp,limit=1] size2
scoreboard players operation @e[tag=tmp,limit=1] to0 += @e[tag=tmp,limit=1] size0
scoreboard players operation @e[tag=tmp,limit=1] to2 += @e[tag=tmp,limit=1] size2

scoreboard players operation @e[tag=tmp,limit=1] size0 *= 2 int
scoreboard players operation @e[tag=tmp,limit=1] size2 *= 2 int
scoreboard players operation @e[tag=tmp,limit=1] size0 += 1 int
scoreboard players operation @e[tag=tmp,limit=1] size2 += 1 int

scoreboard players operation @e[tag=built0,scores={result=1},limit=1] d = @e[tag=tmp,limit=1] size0
scoreboard players operation @e[tag=built0,scores={result=1},limit=1] h = @e[tag=tmp,limit=1] size1
scoreboard players operation @e[tag=built0,scores={result=1},limit=1] l = @e[tag=tmp,limit=1] size2
scoreboard players operation @e[tag=built0,scores={result=1},limit=1] d *= 100000 int
scoreboard players operation @e[tag=built0,scores={result=1},limit=1] h *= 100000 int
scoreboard players operation @e[tag=built0,scores={result=1},limit=1] l *= 100000 int
scoreboard players operation @e[tag=built0,scores={result=1},limit=1] d /= 2 int
scoreboard players operation @e[tag=built0,scores={result=1},limit=1] l /= 2 int
scoreboard players operation @e[tag=built0,scores={result=1},limit=1] build = build int
scoreboard players operation @s tower_gui = build int
scoreboard players operation @e[tag=tmp,limit=1] builtid = @e[tag=built0,scores={result=1},limit=1] int
execute as @e[tag=builder,tag=!tmp] if score @s builtid = @e[tag=built0,scores={result=1},limit=1] int run kill @s
execute if score build int matches 1 run scoreboard players set @e[tag=built0,scores={result=1},limit=1] value 70
execute if score build int matches 2 run scoreboard players set @e[tag=built0,scores={result=1},limit=1] value 100
execute if score build int matches 3 run scoreboard players set @e[tag=built0,scores={result=1},limit=1] value 90
execute if score build int matches 4 run scoreboard players set @e[tag=built0,scores={result=1},limit=1] value 70
execute if score build int matches 5 run scoreboard players set @e[tag=built0,scores={result=1},limit=1] value 180
execute if score build int matches 6 run scoreboard players set @e[tag=built0,scores={result=1},limit=1] value 298
execute if score build int matches 7 run scoreboard players set @e[tag=built0,scores={result=1},limit=1] value 234
execute if score build int matches 8 run scoreboard players set @e[tag=built0,scores={result=1},limit=1] value 180
execute if score build int matches 9 run scoreboard players set @e[tag=built0,scores={result=1},limit=1] value 340
execute if score build int matches 10 run scoreboard players set @e[tag=built0,scores={result=1},limit=1] value 586
execute if score build int matches 11 run scoreboard players set @e[tag=built0,scores={result=1},limit=1] value 450
execute if score build int matches 12 run scoreboard players set @e[tag=built0,scores={result=1},limit=1] value 340


scoreboard players operation @e[tag=tmp,limit=1] clone0 = @e[tag=tmp,limit=1] from0
scoreboard players operation @e[tag=tmp,limit=1] clone1 = @e[tag=tmp,limit=1] from1
scoreboard players operation @e[tag=tmp,limit=1] clone2 = @e[tag=tmp,limit=1] from2

tag @e[tag=tmp] add builder

execute as @e[tag=tmp] run function play:tower/build/store0

tag @e remove tmp

clear @s