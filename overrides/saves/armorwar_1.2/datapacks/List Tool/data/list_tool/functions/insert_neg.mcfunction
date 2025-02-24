scoreboard players operation @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input -= @s list_input
execute unless score @s list_input matches 0.. run scoreboard players add @s list_input 1
data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input prepend from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[-1]
data remove entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[-1]
execute if score @s list_input matches 0.. run data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input prepend from entity @s Item.tag.result
execute if score @s list_input matches 0.. run function list_tool:insert_neg_again
execute unless score @s list_input matches 0.. run function list_tool:insert_neg