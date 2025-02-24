scoreboard players operation temp int = @s muid
execute as @e[tag=damage_return] if score @s int = temp int run kill @s

execute at @s run summon armor_stand ^0.7 ^-0.3 ^0.8 {Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3001}}],Tags:["tmp","game_set","damage_return","hr_model","skill","hr_shield"],NoGravity:1b}
scoreboard players operation @e[tag=tmp,limit=1] int = @s muid
execute if data entity @s SelectedItem.tag.skill_0 run scoreboard players set @s CD0 15
execute if data entity @s SelectedItem.tag.skill_1 run scoreboard players set @s CD1 15
execute if data entity @s SelectedItem.tag.skill_2 run scoreboard players set @s CD2 15

scoreboard players set min int 500
scoreboard players operation max int = @s xp
scoreboard players operation max int *= 800 int
scoreboard players operation max int > min int
function math:random
scoreboard players operation @e[tag=tmp,limit=1] hp = random int

tag @e remove tmp

execute at @s run playsound minecraft:entity.ender_dragon.hurt player @a ~ ~ ~ 1 2