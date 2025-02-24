clear @s
give @s stick{display:{Name:"\"§4删除\""},Enchantments:[{id:"minecraft:sharpness",lvl:100}]}

summon item ~ ~2.0 ~ {Item:{id:"minecraft:sheep_spawn_egg",Count:1b,tag:{EntityTag:{id:"minecraft:shulker",Color:0,CustomName:"\"path\"",CustomNameVisible:1,NoGravity:1b,Silent:1,Invulnerable:1,NoAI:true,Tags:[map_dpath]},display:{Name:"\"§f设置路径点\""}}},Tags:["tmp","item"]}
execute store result entity @e[tag=tmp,limit=1] Item.tag.EntityTag.Color byte 1 run scoreboard players get @s making
tag @e remove tmp

summon item ~ ~2.0 ~ {Item:{id:"minecraft:chicken_spawn_egg",Count:1b,tag:{EntityTag:{id:"minecraft:shulker",Color:0,CustomName:"\"end\"",CustomNameVisible:1,NoGravity:1b,Silent:1,Invulnerable:1,NoAI:true,Tags:[map_end]},display:{Name:"\"§f设置终点\""}}},Tags:["tmp","item"]}
execute store result entity @e[tag=tmp,limit=1] Item.tag.EntityTag.Color byte 1 run scoreboard players get @s making
tag @e remove tmp

summon item ~ ~2.0 ~ {Item:{id:"minecraft:blaze_spawn_egg",Count:1b,tag:{EntityTag:{id:"minecraft:shulker",Color:0,CustomName:"\"tower\"",CustomNameVisible:1,NoGravity:1b,Silent:1,Invulnerable:1,NoAI:true,Tags:[map_tower]},display:{Name:"\"§f设置防御塔基座\""}}},Tags:["tmp","item"]}
execute store result entity @e[tag=tmp,limit=1] Item.tag.EntityTag.Color byte 1 run scoreboard players get @s making
tag @e remove tmp

summon item ~ ~2.0 ~ {Item:{id:"minecraft:zombie_spawn_egg",Count:1b,tag:{EntityTag:{id:"minecraft:shulker",Color:0,CustomName:"\"spoint\"",CustomNameVisible:1,NoGravity:1b,Silent:1,Invulnerable:1,NoAI:true,Tags:[map_spoint]},display:{Name:"\"§f设置怪物出生点\""}}},Tags:["tmp","item"]}
execute store result entity @e[tag=tmp,limit=1] Item.tag.EntityTag.Color byte 1 run scoreboard players get @s making
tag @e remove tmp

summon item ~ ~2.0 ~ {Item:{id:"minecraft:panda_spawn_egg",Count:1b,tag:{item:"develop_gener",EntityTag:{id:"minecraft:shulker",Color:0,CustomName:"\"design\"",CustomNameVisible:1,NoGravity:1b,Silent:1,Invulnerable:1,NoAI:true,Tags:[map_gener]},display:{Name:"\"§f关卡总体设计\""}}},Tags:["tmp","item"]}
execute store result entity @e[tag=tmp,limit=1] Item.tag.EntityTag.Color byte 1 run scoreboard players get @s making
tag @e remove tmp

give @s minecraft:writable_book{display:{Name:"\"§f路径书\""},item:"develop_paths"}

give @s barrier{back:true,display:{Name:"\"§4按F返回\""}}