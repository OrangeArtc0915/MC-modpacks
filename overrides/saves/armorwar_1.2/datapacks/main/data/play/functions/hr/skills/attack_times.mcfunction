execute at @s run playsound minecraft:entity.evoker_fangs.attack player @a ~ ~ ~
execute at @s run summon armor_stand ~ ~-0.5 ~ {Tags:["tmp","game_set","attack_times","hr_model","skill"],Marker:1b,Pose:{LeftArm:[80.0f,0.0f,-90.0f],RightArm:[80.0f,0.0f,90.0f]},HandItems:[{id:"minecraft:iron_sword",Count:1b},{id:"minecraft:iron_sword",Count:1b}],Fire:1000s}
scoreboard players operation @e[tag=tmp,limit=1] int = @s muid
execute at @s run tp @e[tag=tmp,limit=1] ~ ~ ~ ~ 0.0
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ~ ~ ~ ~ ~
execute store result score @e[tag=tmp,limit=1] rotation_0 run data get entity @e[tag=math_marker,limit=1] Rotation[0] 10000
execute store result score @e[tag=tmp,limit=1] rotation_1 run data get entity @e[tag=math_marker,limit=1] Rotation[1] 10000

scoreboard players set min int 180
scoreboard players operation max int = @s xp
scoreboard players operation max int *= 25 int
scoreboard players operation max int > min int
function math:random
scoreboard players operation @e[tag=tmp,limit=1] pdamage = random int

scoreboard players set @e[tag=tmp,limit=1] killtime 7

tag @e remove tmp

execute if data entity @s SelectedItem.tag.skill_0 run scoreboard players set @s CD0 20
execute if data entity @s SelectedItem.tag.skill_1 run scoreboard players set @s CD1 20
execute if data entity @s SelectedItem.tag.skill_2 run scoreboard players set @s CD2 20