#分数小于0就加1
execute unless score @s list_input matches 0.. run scoreboard players add @s list_input 1
#无论如何，将result设置为marker.input的最后一项
data modify entity @s Item.tag.result set from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[-1]
#无论如何，将marker.input的最后一项提前
data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input prepend from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[-1]
data remove entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[-1]
#分数大于等于零就结束函数
execute if score @s list_input matches 0.. run kill @e[tag=list_tool_marker]
execute unless score @s list_input matches 0.. run function list_tool:set_neg