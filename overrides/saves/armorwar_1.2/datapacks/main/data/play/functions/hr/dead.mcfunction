function play:hr/stop

scoreboard players add @s int1 1
execute if score @s int1 matches 20.. run scoreboard players remove @s dead_CD 1
execute if score @s int1 matches 20.. run scoreboard players set @s int1 0

title @s actionbar [{"text":"你将在","font":"size:2x"},{"score":{"name":"@s","objective":"dead_CD"},"font":"size:2x","color":"red"},{"text":"秒后复活","font":"size:2x"}]

execute if score @s dead_CD matches ..0 run function play:hr/respawn