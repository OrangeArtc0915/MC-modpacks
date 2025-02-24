data remove entity @s ArmorItems[3].tag.path[0]
execute if data entity @s ArmorItems[3].tag.path[0] run function play:mon/facing1
execute unless data entity @s ArmorItems[3].tag.path[0] run function play:mon/reach