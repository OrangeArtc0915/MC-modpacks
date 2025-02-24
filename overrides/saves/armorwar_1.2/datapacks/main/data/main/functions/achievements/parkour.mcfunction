tag @s add achievement_parkour
tellraw @s [{"text":"获得成就 <"},{"text":"您是一定要跑酷吗.jpg","color":"gold","hoverEvent":{"action":"show_text","value":"§f可以使用/trigger parkour指令玩更多跑酷"}},{"text":">"}]
scoreboard players enable @s parkour