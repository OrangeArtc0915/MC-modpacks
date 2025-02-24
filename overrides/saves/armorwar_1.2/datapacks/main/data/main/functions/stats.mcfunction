tellraw @a[scores={stats=1}] {"text":"欢迎使用统计系统","extra":[{"text":"\n------------------","color":"blue"},{"text":"\n可以使用/trigger stats set 1打开本页面"},{"text":"\n------------------","color":"yellow"},{"text":"\n使用/trigger stats set 2以查看在线玩家"},{"text":"\n------------------","color":"blue"},{"text":"\n使用/trigger stats set 3查看当前实体数量"},{"text":"\n------------------","color":"yellow"},{"text":"\n使用/trigger stats set 4查看当前命令执行数量"},{"text":"\n------------------","color":"blue"}]}
tellraw @a[scores={stats=2}] {"text":"当前在线玩家: ","bold":"true","extra":[{"selector":"@a","bold":"false","color":"gray"}]}
execute if entity @a[scores={stats=3}] run scoreboard players set EntityC int 0
execute if entity @a[scores={stats=3}] as @e run scoreboard players add EntityC int 1
tellraw @a[scores={stats=3}] {"text":"当前实体数量: ","extra":[{"color":"red","score":{"name":"EntityC","objective":"int"}}]}
tellraw @a[scores={stats=4}] {"color":"red","score":{"name":"CommandC","objective":"int"},"extra":[{"color":"white","text":"条命令正在被函数系统执行"}]}
scoreboard players set @a stats 0