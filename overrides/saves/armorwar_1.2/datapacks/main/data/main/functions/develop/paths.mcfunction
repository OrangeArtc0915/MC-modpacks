summon item ~ ~2.0 ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{item:"develop_paths",display:{Name:'{"text":"路径"}'},spawn:{pos:[],paths:[]}}},Tags:["tmp"]}


data modify entity @e[tag=tmp,limit=1] Item.tag.pages set from entity @s Inventory[{Slot:-106b}].tag.pages
setblock 0 11 0 air
tag @s add tmp5
setblock 0 11 0 oak_sign{Text1:'{"nbt":"Inventory[{Slot:-106b}].tag.title","entity":"@e[tag=tmp5,limit=1]"}'}
tag @s remove tmp5
data modify entity @e[tag=tmp,limit=1] Item.tag.display.Name set from block 0 11 0 Text1


data modify entity @e[tag=tmp,limit=1] Item.tag.tmp set from entity @e[tag=tmp,limit=1] Item.tag.pages[0]
data remove entity @e[tag=tmp,limit=1] Item.tag.pages[0]

execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"0"}'} run scoreboard players set temp int 0
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"1"}'} run scoreboard players set temp int 1
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"2"}'} run scoreboard players set temp int 2
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"3"}'} run scoreboard players set temp int 3
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"4"}'} run scoreboard players set temp int 4
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"5"}'} run scoreboard players set temp int 5
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"6"}'} run scoreboard players set temp int 6
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"7"}'} run scoreboard players set temp int 7
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"8"}'} run scoreboard players set temp int 8
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"9"}'} run scoreboard players set temp int 9
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"10"}'} run scoreboard players set temp int 10
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"11"}'} run scoreboard players set temp int 11
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"12"}'} run scoreboard players set temp int 12
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"13"}'} run scoreboard players set temp int 13
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"14"}'} run scoreboard players set temp int 14
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"15"}'} run scoreboard players set temp int 15
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"16"}'} run scoreboard players set temp int 16
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"17"}'} run scoreboard players set temp int 17
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"18"}'} run scoreboard players set temp int 18
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"19"}'} run scoreboard players set temp int 19
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"20"}'} run scoreboard players set temp int 20
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"21"}'} run scoreboard players set temp int 21
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"22"}'} run scoreboard players set temp int 22
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"23"}'} run scoreboard players set temp int 23
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"24"}'} run scoreboard players set temp int 24
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"25"}'} run scoreboard players set temp int 25
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"26"}'} run scoreboard players set temp int 26
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"27"}'} run scoreboard players set temp int 27
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"28"}'} run scoreboard players set temp int 28
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"29"}'} run scoreboard players set temp int 29
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"30"}'} run scoreboard players set temp int 30
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"31"}'} run scoreboard players set temp int 31
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"32"}'} run scoreboard players set temp int 32
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"33"}'} run scoreboard players set temp int 33
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"34"}'} run scoreboard players set temp int 34
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"35"}'} run scoreboard players set temp int 35
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"36"}'} run scoreboard players set temp int 36
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"37"}'} run scoreboard players set temp int 37
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"38"}'} run scoreboard players set temp int 38
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"39"}'} run scoreboard players set temp int 39
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"40"}'} run scoreboard players set temp int 40
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"41"}'} run scoreboard players set temp int 41
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"42"}'} run scoreboard players set temp int 42
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"43"}'} run scoreboard players set temp int 43
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"44"}'} run scoreboard players set temp int 44
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"45"}'} run scoreboard players set temp int 45
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"46"}'} run scoreboard players set temp int 46
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"47"}'} run scoreboard players set temp int 47
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"48"}'} run scoreboard players set temp int 48
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"49"}'} run scoreboard players set temp int 49
execute if data entity @e[tag=tmp,limit=1] Item.tag{tmp:'{"text":"50"}'} run scoreboard players set temp int 50


execute as @e[tag=map_spointed] if score @s int = temp int run data modify entity @e[tag=tmp,limit=1] Item.tag.spawn.pos set from entity @s Pos

execute store result score loop int run data get entity @e[tag=tmp,limit=1] Item.tag.pages

execute if score loop int matches 1.. as @e[tag=tmp,limit=1] run function main:develop/paths_loop

data modify entity @e[tag=tmp,limit=1] Item.tag.pages set from entity @s Inventory[{Slot:-106b}].tag.pages
replaceitem entity @s weapon.offhand air
give @s minecraft:writable_book{display:{Name:"\"§f路径书\""},item:"develop_paths"}
tag @e remove tmp