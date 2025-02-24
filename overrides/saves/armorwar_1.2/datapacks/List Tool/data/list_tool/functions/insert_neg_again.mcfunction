execute unless score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches ..0 run scoreboard players remove @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input 1
data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input append from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[0]
data remove entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[0]
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches ..0 run data modify entity @s Item.tag.result set value []
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches ..0 run data modify entity @s Item.tag.result set from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches ..0 run kill @e[type=armor_stand,limit=1,tag=list_tool_marker]
execute unless score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches ..0 run function list_tool:insert_neg_again