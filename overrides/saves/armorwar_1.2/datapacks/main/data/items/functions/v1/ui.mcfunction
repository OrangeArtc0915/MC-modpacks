title @s actionbar {"text":"<操作面板> V-1巡航导弹","color":"aqua","bold":"true","italic":"true"}
scoreboard players set temp int 0
execute unless data entity @s Inventory[{tag:{v-1:1}}] run scoreboard players set temp int 1
execute unless data entity @s Inventory[{tag:{v-1:2}}] run scoreboard players set temp int 1
execute if score temp int matches 1 run function items:v1/menu

execute if data entity @s Inventory[{Slot:-106b,tag:{v-1:1}}] as @e[tag=rocket_v1,tag=await] run function rigid:face
execute unless data entity @s Inventory[{Slot:-106b,tag:{v-1:1}}] as @e[tag=rocket_v1,tag=await] run function items:v1/roll

execute if data entity @s Inventory[{Slot:-106b,tag:{v-1:2}}] as @e[tag=rocket_v1,tag=await] run function items:v1/shoot