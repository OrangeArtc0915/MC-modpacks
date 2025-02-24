scoreboard players operation temp int = @s muid
execute as @e[tag=rat_model] if score @s int = temp int run kill @s

execute at @s rotated ~ 0.0 run summon armor_stand 0 11 0 {Tags:["tmp","rat_model","mon_model"],Marker:1b,DisabledSlots:16191,Invulnerable:1b,Pose:{RightArm:[-85.0f,0.0f,0.0f],LeftArm:[-85.0f,0.0f,0.0f]}}
scoreboard players operation @e[tag=tmp,limit=1] int = @s muid
data modify entity @e[tag=tmp,limit=1] HandItems set from entity @s HandItems
replaceitem entity @s weapon.mainhand air
replaceitem entity @s weapon.offhand air
tag @e remove tmp

tag @s add rattacking