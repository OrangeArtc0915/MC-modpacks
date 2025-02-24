execute as @e[type=item,tag=scheduler.item,tag=!scheduler.item.inited] run function scheduler:init
execute unless score occupied schedulerVar matches 0 run scoreboard players set occupied schedulerVar 0
execute as @e[type=item,scores={schedulerTime=1..}] run function scheduler:countdown