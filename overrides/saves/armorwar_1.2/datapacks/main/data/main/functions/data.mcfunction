tellraw @a[scores={data=1..}] {"text":"以下为您的资料","color":"green"}
execute as @a[scores={data=1..}] run tellraw @s {"text":"杀敌数:","extra":[{"score":{"name":"@s","objective":"kills"}}]}
execute as @a[scores={data=1..}] run tellraw @s {"text":"死亡数:","extra":[{"score":{"name":"@s","objective":"death"}}]}
tellraw @a[scores={data=1..,duanwei=0}] {"text":"段位:无"}
tellraw @a[scores={data=1..,duanwei=1}] {"text":"段位:青铜"}
tellraw @a[scores={data=1..,duanwei=2}] {"text":"段位:白银"}
tellraw @a[scores={data=1..,duanwei=3}] {"text":"段位:黄金"}
tellraw @a[scores={data=1..,duanwei=4}] {"text":"段位:钻石"}
tellraw @a[scores={data=1..,duanwei=5}] {"text":"段位:大师"}
tellraw @a[scores={data=1..,duanwei=6}] {"text":"段位:王者"}
tellraw @a[scores={data=1..,duanwei=7}] {"text":"段位:最强王者"}
execute as @a[scores={data=1..}] run tellraw @s {"text":"主游戏胜场:","extra":[{"score":{"name":"@s","objective":"wzc"}}]}
execute as @a[scores={data=1..}] run tellraw @s {"text":"团赛胜场:","extra":[{"score":{"name":"@s","objective":"wrc"}}]}
scoreboard players set @a data 0