kill @e[tag=boss_trigger]
kill @e[tag=boss_set]
scoreboard players set boss_fighting int 1
summon zombie 0 11 0 {Rotation:[0.0f,0.0f],Tags:["monster","play_set","boss","head","tmp","rigid_mo","boss1","boss_set"],NoAI:1b,NoGravity:1b,ArmorItems:[{},{},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b,tag:{path:[1,2,4,7,11,13,14,15,17,16,8,9,10,12,0],Unbreakable:1b}}],Silent:1b,PersistenceRequired:1b}
execute as @e[tag=tmp,limit=1] run function rigid:link/set
scoreboard players set x int 42660000
scoreboard players set y int 160000
scoreboard players add y int 32500
scoreboard players set z int 11170000
execute as @e[tag=tmp,limit=1] run function rigid:link/actions/tp
attribute @e[tag=tmp,limit=1] minecraft:generic.max_health base set 200.0
scoreboard players set @e[tag=tmp,limit=1] walk_t 0
scoreboard players set @e[tag=tmp,limit=1] walk_t1 -28
scoreboard players set @e[tag=tmp,limit=1] rigid_state 0
scoreboard players set @e[tag=tmp,limit=1] mhp 1200000
scoreboard players set @e[tag=tmp,limit=1] hp 1200000

summon armor_stand 0 11 0 {Tags:["monster","mob_fighter","boss","tmp1","body","boss_set"],ArmorItems:[{},{},{},{tag:{CustomModelData:8700003},id:"minecraft:carrot_on_a_stick",Count:1b}],Invulnerable:1b,NoGravity:1b}
execute as @e[tag=tmp1,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp1,limit=1] rigid_mo = @e[tag=tmp,limit=1] rigid_id
scoreboard players set @e[tag=tmp1,limit=1] u 0
scoreboard players set @e[tag=tmp1,limit=1] v 0
scoreboard players set @e[tag=tmp1,limit=1] w -1800
scoreboard players set @e[tag=tmp1,limit=1] rotation_0 1800000

summon armor_stand 0 11 0 {Tags:["monster","mob_fighter","boss","tmp2","hand0","boss_set"],ArmorItems:[{},{},{},{tag:{CustomModelData:8700007},id:"minecraft:carrot_on_a_stick",Count:1b}],Invulnerable:1b,NoGravity:1b}
execute as @e[tag=tmp2,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp2,limit=1] rigid_mo = @e[tag=tmp1,limit=1] rigid_id
scoreboard players set @e[tag=tmp2,limit=1] u -1825
scoreboard players set @e[tag=tmp2,limit=1] v -1500
scoreboard players set @e[tag=tmp2,limit=1] w -500

summon armor_stand 0 11 0 {Tags:["monster","mob_fighter","boss","tmp3","hand1","boss_set"],ArmorItems:[{},{},{},{tag:{CustomModelData:8700002},id:"minecraft:carrot_on_a_stick",Count:1b}],Invulnerable:1b,NoGravity:1b}
execute as @e[tag=tmp3,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp3,limit=1] rigid_mo = @e[tag=tmp1,limit=1] rigid_id
scoreboard players set @e[tag=tmp3,limit=1] u 1825
scoreboard players set @e[tag=tmp3,limit=1] v -1500
scoreboard players set @e[tag=tmp3,limit=1] w -500

summon armor_stand 0 11 0 {Tags:["monster","mob_fighter","boss","tmp10","saw","boss_set"],ArmorItems:[{},{},{},{tag:{CustomModelData:8700006},id:"minecraft:carrot_on_a_stick",Count:1b}],Invulnerable:1b,NoGravity:1b}
execute as @e[tag=tmp10,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp10,limit=1] rigid_mo = @e[tag=tmp2,limit=1] rigid_id
scoreboard players set @e[tag=tmp10,limit=1] u 0
scoreboard players set @e[tag=tmp10,limit=1] v -1000
scoreboard players set @e[tag=tmp10,limit=1] w 0

summon armor_stand 0 11 0 {Tags:["monster","mob_fighter","boss","tmp4","leg_up0","leg_up","boss_set"],ArmorItems:[{},{},{},{tag:{CustomModelData:8700004},id:"minecraft:carrot_on_a_stick",Count:1b}],Invulnerable:1b,NoGravity:1b}
execute as @e[tag=tmp4,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp4,limit=1] rigid_mo = @e[tag=tmp1,limit=1] rigid_id
scoreboard players set @e[tag=tmp4,limit=1] u -825
scoreboard players set @e[tag=tmp4,limit=1] v 200
scoreboard players set @e[tag=tmp4,limit=1] w -1350

summon armor_stand 0 11 0 {Tags:["monster","mob_fighter","boss","tmp5","leg_up1","leg_up","boss_set"],ArmorItems:[{},{},{},{tag:{CustomModelData:8700004},id:"minecraft:carrot_on_a_stick",Count:1b}],Invulnerable:1b,NoGravity:1b}
execute as @e[tag=tmp5,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp5,limit=1] rigid_mo = @e[tag=tmp1,limit=1] rigid_id
scoreboard players set @e[tag=tmp5,limit=1] u 825
scoreboard players set @e[tag=tmp5,limit=1] v 200
scoreboard players set @e[tag=tmp5,limit=1] w -1350

summon armor_stand 0 11 0 {Tags:["mon_model","tmp6","leg_bottom0","leg_bottom","boss_set"],ArmorItems:[{},{},{},{tag:{CustomModelData:8700005},id:"minecraft:carrot_on_a_stick",Count:1b}],Invulnerable:1b,NoGravity:1b}
execute as @e[tag=tmp6,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp6,limit=1] rigid_mo = @e[tag=tmp4,limit=1] rigid_id
scoreboard players set @e[tag=tmp6,limit=1] u 0
scoreboard players set @e[tag=tmp6,limit=1] v 200
scoreboard players set @e[tag=tmp6,limit=1] w -885

summon armor_stand 0 11 0 {Tags:["mon_model","tmp7","leg_bottom1","leg_bottom","boss_set"],ArmorItems:[{},{},{},{tag:{CustomModelData:8700005},id:"minecraft:carrot_on_a_stick",Count:1b}],Invulnerable:1b,NoGravity:1b}
execute as @e[tag=tmp7,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp7,limit=1] rigid_mo = @e[tag=tmp5,limit=1] rigid_id
scoreboard players set @e[tag=tmp7,limit=1] u 0
scoreboard players set @e[tag=tmp7,limit=1] v 200
scoreboard players set @e[tag=tmp7,limit=1] w -885

summon armor_stand 0 11 0 {Tags:["mon_model","tmp8","foot0","boss_set"],ArmorItems:[{},{},{},{tag:{CustomModelData:8700001},id:"minecraft:carrot_on_a_stick",Count:1b}],Invulnerable:1b,NoGravity:1b}
execute as @e[tag=tmp8,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp8,limit=1] rigid_mo = @e[tag=tmp6,limit=1] rigid_id
scoreboard players set @e[tag=tmp8,limit=1] u 0
scoreboard players set @e[tag=tmp8,limit=1] v -300
scoreboard players set @e[tag=tmp8,limit=1] w -485

summon armor_stand 0 11 0 {Tags:["mon_model","tmp9","foot1","boss_set"],ArmorItems:[{},{},{},{tag:{CustomModelData:8700001},id:"minecraft:carrot_on_a_stick",Count:1b}],Invulnerable:1b,NoGravity:1b}
execute as @e[tag=tmp9,limit=1] run function rigid:link/set
scoreboard players operation @e[tag=tmp9,limit=1] rigid_mo = @e[tag=tmp7,limit=1] rigid_id
scoreboard players set @e[tag=tmp9,limit=1] u 0
scoreboard players set @e[tag=tmp9,limit=1] v -300
scoreboard players set @e[tag=tmp9,limit=1] w -485


scoreboard players set @e[tag=boss] target 0
execute as @e[tag=boss] store result score @s muid run scoreboard players add #muid muid 1

execute as @e[tag=tmp,limit=1] run function mobs:boss1/actions/next_facing

tag @e remove tmp
tag @e remove tmp1
tag @e remove tmp2
tag @e remove tmp3
tag @e remove tmp4
tag @e remove tmp5
tag @e remove tmp6
tag @e remove tmp7
tag @e remove tmp8
tag @e remove tmp9
tag @e remove tmp10