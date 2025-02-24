execute unless entity @a[tag=developer] run function main:develop/back
execute at @e[tag=de_name] if block ~ ~ ~ oak_sign unless block ~ ~ ~ oak_sign{Text1:'{"text":""}'} run function main:develop/name

execute at @e[tag=de_lore] if block ~ ~ ~ oak_sign unless block ~ ~ ~ oak_sign{Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'} run function main:develop/lore

title @a actionbar [{"text":"玩家"},{"selector":"@a[tag=developer]"},{"text":"正在创作自定义地图《"},{"nbt":"Items[0].tag.making.name","block":"0 0 0"},{"text":"》"}]

execute as @e[tag=de_mp_place] at @s run function main:develop/mpoint/set

execute as @a[nbt={SelectedItem:{tag:{CustomModelData:4}}}] at @s run function main:develop/mark0

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:4}}]}] at @s run function main:develop/remove

tag @e remove de_dele

execute if score path_making int matches 1 run function main:develop/paths/making