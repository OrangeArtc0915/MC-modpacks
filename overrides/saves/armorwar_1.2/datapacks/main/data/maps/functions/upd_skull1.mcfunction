setblock -28 60 77 glass
execute unless score ai int matches 1 run data modify entity @e[tag=map_skull,limit=1] CustomName set value '{"text":"无决策者"}'
execute if score ai int matches 1 run data modify entity @e[tag=map_skull,limit=1] CustomName set value '{"text":"决策者:AI"}'