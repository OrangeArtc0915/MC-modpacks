#获取相同分数
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches 0 run scoreboard players operation @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input -= @s list_input
#分数小于0就加1
execute unless score @s list_input matches 0.. run scoreboard players add @s list_input 1
#分数大于等于0就删除最后一个并输入result到最后一个
execute if score @s list_input matches 0.. run data remove entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[-1]
execute if score @s list_input matches 0.. run data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input append from entity @s Item.tag.input
#无论如何，把最后一项提前
data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input prepend from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[-1]
data remove entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[-1]
#分数大于等于0就结束此递归函数，运行第二个递归函数
execute if score @s list_input matches 0.. run function list_tool:change_neg_again
execute unless score @s list_input matches 0.. run function list_tool:change_neg