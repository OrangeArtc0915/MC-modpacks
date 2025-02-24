execute unless entity @a[tag=decision_maker] run function main:disstop
gamemode creative @a[tag=decision_maker]
scoreboard players set @a[tag=decision_maker] tower_gui -1
execute as @a[tag=decision_maker] run function play:field
replaceitem entity @a[tag=decision_maker] hotbar.4 barrier{end:1b,display:{Name:'{"text":"§4结束游戏"}',Lore:['{"text":"§f按F"}']}}
execute as @a[tag=decision_maker] unless data entity @s Inventory[{Slot:-106b}].tag.stop run function main:disstop
execute as @a[tag=decision_maker] if data entity @s Inventory[{Slot:-106b}].tag.end run scoreboard players set test int -1
title @a actionbar {"text":"游戏暂停中！","color":"yellow","bold":"true"}
execute if score stop int matches 0 run title @a actionbar {"text":" "}
kill @e[type=item,tag=]
execute as @e[type=area_effect_cloud] run function main:age-
effect give @a minecraft:weakness 1 5 true
clear @a[tag=hero]
execute as @a[tag=hero] run function main:stop
execute as @e[scores={no_fire=1}] run data modify entity @s Fire set value 0s

execute as @e[type=armor_stand,nbt=!{NoGravity:1b},tag=!stop_as,tag=!soldier] run function main:stop_as