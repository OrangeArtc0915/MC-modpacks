#分数小于等于0就获取相反数
execute if score @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input matches 0 run scoreboard players operation @e[type=armor_stand,limit=1,tag=list_tool_marker] list_input -= @s list_input
#分数大于0就减1
execute unless score @s list_input matches ..-1 run scoreboard players remove @s list_input 1
#分数小于等于0就删除第一个
execute if score @s list_input matches ..-1 run data remove entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[0]
#无论如何，把第一项放到最后
data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input append from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[0]
data remove entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[0]
#分数小于等于0就结束此递归函数，运行第二个递归函数
execute if score @s list_input matches ..-1 run function list_tool:remove_pos_again
execute unless score @s list_input matches ..-1 run function list_tool:remove_pos