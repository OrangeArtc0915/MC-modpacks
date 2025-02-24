clear @s #main:all{map_tool:true}
give @s minecraft:writable_book{display:{Name:"\"§f创建地图\"",Lore:["\"§f标题为地图名称\"","\"§f内容为地图介绍\"","\"§ftrigger map_x set和trigger map_y set和trigger map_z set设置地图坐标\"","\"§f主手持有图标物品\"","\"§f放在副手确认\""]},item:"map_edit",map_tool:true}
give @s minecraft:writable_book{display:{Name:"\"§f修改地图\"",Lore:["\"§f标题为地图名称\"","\"§f内容为地图介绍\"","\"§ftrigger map_x set和trigger map_y set和trigger map_z set设置地图坐标\"","\"§f主手持有图标物品\"","\"§f放在副手确认\""]},item:"map_edit1",map_tool:true}
give @s green_wool{display:{Name:"\"§2完成项目\""},item:"map_finish",map_tool:true}
#give @s blue_wool{display:{Name:"\"§b进入项目\""},item:"map_enter",map_tool:true}
give @s red_wool{display:{Name:"\"§4删除项目\""},item:"map_delete",map_tool:true}