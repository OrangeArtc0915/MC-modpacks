summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}

spreadplayers ~ ~ 0.0 2.5 false @e[tag=tmp]
execute at @e[tag=tmp,limit=1] run summon minecraft:firework_rocket ~ ~2.1 ~ {LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:100b,Explosions:[{Type:1b,Colors:[I;0]}]}}},Tags:["tmp1"]}

scoreboard players set min int 10
scoreboard players set max int 35
function math:uuid-random
execute store result entity @e[tag=tmp1,limit=1] LifeTime int 1 run scoreboard players get random int

scoreboard players set min int 0
scoreboard players set max int 4
function math:uuid-random
execute store result entity @e[tag=tmp1,limit=1] FireworksItem.tag.Fireworks.Explosions[0].Type byte 1 run scoreboard players get random int


scoreboard players set min int 0
scoreboard players operation max int = fcolor int
function math:uuid-random
execute store result entity @e[tag=tmp1,limit=1] FireworksItem.tag.Fireworks.Explosions[0].Colors[0] int 1 run scoreboard players get random int

scoreboard players set min int 0
scoreboard players operation max int = fcolor int
function math:uuid-random
execute store result entity @e[tag=tmp1,limit=1] FireworksItem.tag.Fireworks.Explosions[0].FadeColors[0] int 1 run scoreboard players get random int

scoreboard players set min int 0
scoreboard players set max int 1
function math:uuid-random
execute store result entity @e[tag=tmp1,limit=1] FireworksItem.tag.Fireworks.Explosions[0].Flicker byte 1 run scoreboard players get random int

scoreboard players set min int 0
scoreboard players set max int 1
function math:uuid-random
execute store result entity @e[tag=tmp1,limit=1] FireworksItem.tag.Fireworks.Explosions[0].Trail byte 1 run scoreboard players get random int

tag @e remove tmp1
kill @e[tag=tmp]