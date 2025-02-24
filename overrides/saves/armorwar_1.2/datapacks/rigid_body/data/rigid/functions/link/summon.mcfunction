kill @e[tag=test5]
summon armor_stand 0 11 0 {Marker:1b,Tags:["test","tmp","test5","body","rigid_mo"],ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players set x int 2090000
scoreboard players set y int 750000
scoreboard players set z int 260000
execute as @e[tag=tmp,limit=1] run function rigid:link/actions/tp
scoreboard players set @e[tag=tmp,limit=1] rigid_state 0
tag @e remove tmp

summon armor_stand 0 11 0 {Marker:1b,Tags:["tmp","test5","head"],ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b}]}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp,limit=1] rigid_mo = @e[tag=test,limit=1] rigid_id
scoreboard players set @e[tag=tmp,limit=1] u 0
scoreboard players set @e[tag=tmp,limit=1] v 0
scoreboard players set @e[tag=tmp,limit=1] w 640
tag @e remove tmp

summon armor_stand 0 11 0 {Marker:1b,Tags:["tmp","test5","arm0"],ArmorItems:[{},{},{},{id:"minecraft:oak_fence",Count:1b}]}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp,limit=1] rigid_mo = @e[tag=test,limit=1] rigid_id
scoreboard players set @e[tag=tmp,limit=1] u -500
scoreboard players set @e[tag=tmp,limit=1] v 0
scoreboard players set @e[tag=tmp,limit=1] w 0
tag @e remove tmp

summon armor_stand 0 11 0 {Marker:1b,Tags:["tmp","test5","arm1"],ArmorItems:[{},{},{},{id:"minecraft:oak_fence",Count:1b}]}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp,limit=1] rigid_mo = @e[tag=test,limit=1] rigid_id
scoreboard players set @e[tag=tmp,limit=1] u 500
scoreboard players set @e[tag=tmp,limit=1] v 0
scoreboard players set @e[tag=tmp,limit=1] w 0
tag @e remove tmp

summon armor_stand 0 11 0 {Marker:1b,Tags:["tmp","test5","torch0","torch00"],ArmorItems:[{},{},{},{id:"minecraft:torch",Count:1b}]}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp,limit=1] rigid_mo = @e[tag=test5,tag=arm0,limit=1] rigid_id
scoreboard players set @e[tag=tmp,limit=1] u 0
scoreboard players set @e[tag=tmp,limit=1] v 0
scoreboard players set @e[tag=tmp,limit=1] w 120
tag @e remove tmp

summon armor_stand 0 11 0 {Marker:1b,Tags:["tmp","test5","torch1","torch01"],ArmorItems:[{},{},{},{id:"minecraft:torch",Count:1b}]}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp,limit=1] rigid_mo = @e[tag=test5,tag=arm1,limit=1] rigid_id
scoreboard players set @e[tag=tmp,limit=1] u 0
scoreboard players set @e[tag=tmp,limit=1] v 0
scoreboard players set @e[tag=tmp,limit=1] w 120
tag @e remove tmp

summon armor_stand 0 11 0 {Marker:1b,Tags:["tmp","test5","torch0","torch02"],ArmorItems:[{},{},{},{id:"minecraft:torch",Count:1b}]}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp,limit=1] rigid_mo = @e[tag=test5,tag=arm0,limit=1] rigid_id
scoreboard players set @e[tag=tmp,limit=1] u 0
scoreboard players set @e[tag=tmp,limit=1] v 250
scoreboard players set @e[tag=tmp,limit=1] w 120
tag @e remove tmp

summon armor_stand 0 11 0 {Marker:1b,Tags:["tmp","test5","torch1","torch03"],ArmorItems:[{},{},{},{id:"minecraft:torch",Count:1b}]}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp,limit=1] rigid_mo = @e[tag=test5,tag=arm1,limit=1] rigid_id
scoreboard players set @e[tag=tmp,limit=1] u 0
scoreboard players set @e[tag=tmp,limit=1] v 250
scoreboard players set @e[tag=tmp,limit=1] w 120
tag @e remove tmp

summon armor_stand 0 11 0 {Marker:1b,Tags:["tmp","test5","torch0","torch04"],ArmorItems:[{},{},{},{id:"minecraft:torch",Count:1b}]}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp,limit=1] rigid_mo = @e[tag=test5,tag=arm0,limit=1] rigid_id
scoreboard players set @e[tag=tmp,limit=1] u 0
scoreboard players set @e[tag=tmp,limit=1] v 500
scoreboard players set @e[tag=tmp,limit=1] w 120
tag @e remove tmp

summon armor_stand 0 11 0 {Marker:1b,Tags:["tmp","test5","torch1","torch05"],ArmorItems:[{},{},{},{id:"minecraft:torch",Count:1b}]}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp,limit=1] rigid_mo = @e[tag=test5,tag=arm1,limit=1] rigid_id
scoreboard players set @e[tag=tmp,limit=1] u 0
scoreboard players set @e[tag=tmp,limit=1] v 500
scoreboard players set @e[tag=tmp,limit=1] w 120
tag @e remove tmp