#分数小于0就加一
execute unless score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches 1.. run scoreboard players add @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input 1
#无论如何，把最后一项提前
data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input prepend from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[-1]
data remove entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[-1]
#分数大于等于0就输出
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches 1.. run data modify entity @s Item.tag.result set from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input
#分数大于等于0就结束此函数
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches 1.. run kill @e[type=armor_stand,limit=1,tag=list_tool_marker]
execute unless score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches 1.. run function list_tool:remove_pos_again