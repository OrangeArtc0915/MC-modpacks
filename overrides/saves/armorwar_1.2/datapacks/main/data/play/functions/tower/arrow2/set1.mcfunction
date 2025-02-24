summon armor_stand ~-0.5 ~5.5 ~2 {Invulnerable:1b,Small:1b,ShowArms:1b,NoBasePlate:1b,NoGravity:1b,Pose:{Head:[19.3f,0f,0f],Body:[0f,0f,0f],LeftArm:[-53.2f,12.1f,36.2f],RightArm:[-91.8f,-16.9f,94.1f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:arrow",Count:1b}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b,display:{color:0}}],Tags:["build_model","mob_fighter","tmp","arrow2_0"]}
summon armor_stand ~0.5 ~5.5 ~2 {Invulnerable:1b,Small:1b,ShowArms:1b,NoBasePlate:1b,NoGravity:1b,Pose:{Head:[19.3f,0f,0f],Body:[0f,0f,0f],LeftArm:[-53.2f,12.1f,36.2f],RightArm:[-91.8f,-16.9f,94.1f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:arrow",Count:1b}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b,display:{color:0}}],Tags:["build_model","mob_fighter","tmp","arrow2_1"]}
scoreboard players operation @e[tag=tmp] int = @s int
scoreboard players set min int 0
scoreboard players set max int 2147483647
function math:uuid-random
execute as @e[tag=tmp] store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get random int
tag @e remove tmp
scoreboard players set @s value 340