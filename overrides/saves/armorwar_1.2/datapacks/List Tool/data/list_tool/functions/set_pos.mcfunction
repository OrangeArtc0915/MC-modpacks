execute unless score @s list_input matches ..-1 run scoreboard players remove @s list_input 1
data modify entity @s Item.tag.result set from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[0]
data modify entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input append from entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[0]
data remove entity @e[type=armor_stand,limit=1,tag=list_tool_marker] ArmorItems[0].tag.input[0]
execute if score @s list_input matches ..-1 run kill @e[tag=list_tool_marker]
execute unless score @s list_input matches ..-1 run function list_tool:set_pos