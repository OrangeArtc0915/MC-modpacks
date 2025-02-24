summon armor_stand 0 11 0 {Tags:["boss","tmp","zomb","boss_set"],ArmorItems:[{},{},{},{tag:{CustomModelData1:8700003},id:"minecraft:zombie_head",Count:1b}],Marker:1b,Invulnerable:1b,NoGravity:1b}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp,limit=1] rigid_mo = @e[tag=boss_set,tag=hand1,limit=1] rigid_id
scoreboard players set @e[tag=tmp,limit=1] u 0
scoreboard players set @e[tag=tmp,limit=1] v -1000
scoreboard players set @e[tag=tmp,limit=1] w 0

scoreboard players set @e[tag=tmp,limit=1] rotation_0 1800000

tag @e remove tmp

scoreboard players set @s rigid_move 1