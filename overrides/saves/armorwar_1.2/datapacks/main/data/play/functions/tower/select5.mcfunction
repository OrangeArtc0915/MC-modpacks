tag @e[type=area_effect_cloud] remove tower_editing
tag @e[type=area_effect_cloud] remove tower_selecting
function play:tower/display
function play:tower/display1

scoreboard players set temp int -1
execute if entity @e[tag=tower_selecting] run scoreboard players set temp int 0
scoreboard players operation temp int = @e[tag=tower_editing,limit=1] build

scoreboard players set change_select int 0
execute unless score temp int = @s tower_gui run scoreboard players set change_select int 1
scoreboard players operation @s tower_gui = temp int