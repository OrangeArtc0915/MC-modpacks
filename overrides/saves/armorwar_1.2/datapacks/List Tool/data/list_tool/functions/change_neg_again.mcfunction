#分数小于0就加一
execute unless score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches ..0 run scoreboard players remove @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input 1
#无论如何，把最后一项提前
data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input append from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[0]
data remove entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[0]
#分数大于等于0就输出
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches ..0 run data modify entity @s Item.tag.result set value []
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches ..0 run data modify entity @s Item.tag.result set from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input
#分数大于等于0就结束此函数
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches ..0 run kill @e[type=armor_stand,limit=1,tag=list_tool_marker]
execute unless score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches ..0 run function list_tool:change_neg_again