summon armor_stand 0 11 0 {NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:8596001}}],Invisible:0b,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0.0f,0.0f,0.0f]},Tags:["await","rocket_v1","tmp","build_model","a_skill"],Invulnerable:1b}

execute as @e[tag=tmp] at @s rotated -90.0 -40.0 run function rigid:face

tp @e[tag=tmp,limit=1] ~ ~ ~
execute as @e[tag=tmp] run function items:v1/set
scoreboard players operation @e[tag=tmp,limit=1] int = @s int

scoreboard players set min int 1
scoreboard players set max int 35
function math:random
scoreboard players operation @e[tag=tmp,limit=1] CD = random int
tag @e remove tmp