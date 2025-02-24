#pre
execute as @s at @s run summon armor_stand ~ ~ ~ {Tags:["list_tool_marker"],Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{id:"structure_void",Count:1b,tag:{input:[],result:{}}},{},{},{}]}
execute as @s at @s run data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input set from entity @s Item.tag.input
execute as @s at @s run data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.result set from entity @s Item.tag.result
scoreboard players operation list_input list_input = @s list_input
execute store result score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input if data entity @s Item.tag.input[]
execute if score @s list_input matches 0.. if score @s list_input > @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input run scoreboard players operation @s list_input %= @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input
execute if score @s list_input matches ..-1 if score @s list_input < @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input run scoreboard players operation @s list_input %= @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input
scoreboard players set @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input 0

#judge
data remove entity @s Item.tag.result
execute if score @s list_input matches 0.. as @s at @s run function list_tool:get_pos
execute if score @s list_input matches ..-1 as @s at @s run function list_tool:get_neg
scoreboard players operation @s list_input = list_input list_input