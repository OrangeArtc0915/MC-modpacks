execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches ..0 run scoreboard players add @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input 1
data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input prepend from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[-1]
data remove entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[-1]
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches 1.. run data modify entity @s Item.tag.result set value []
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches 1.. run data modify entity @s Item.tag.result set from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches 1.. run kill @e[type=armor_stand,limit=1,tag=list_tool_marker]
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches ..0 run function list_tool:insert_pos_again