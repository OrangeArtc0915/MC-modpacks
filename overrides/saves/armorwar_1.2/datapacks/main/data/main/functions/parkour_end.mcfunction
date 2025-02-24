tellraw @s {"text":"<xiaodou123> ohhhhhhhhhhh"}
execute if score parkour_min int > @s parkour_timer run function main:parkour_break


scoreboard players operation @s parkour_min < @s parkour_timer

scoreboard players operation temp int = @s parkour_timer
execute store result score temp2 int run scoreboard players operation temp int /= 20 int
scoreboard players operation temp2 int %= 60 int
execute store result score temp1 int run scoreboard players operation temp int /= 60 int
scoreboard players operation temp int /= 60 int
scoreboard players operation temp1 int %= 60 int
tellraw @s [{"text":"本次用时","color":"green"},{"text":" "},{"score":{"name":"temp","objective":"int"}},{"text":"时"},{"score":{"name":"temp1","objective":"int"}},{"text":"分"},{"score":{"name":"temp2","objective":"int"}},{"text":"秒"}]
scoreboard players operation temp int = @s parkour_fail
tellraw @s [{"text":"本次失误","color":"green"},{"score":{"name":"temp","objective":"int"}},{"text":"次"}]


scoreboard players operation temp int = @s parkour_min
execute store result score temp2 int run scoreboard players operation temp int /= 20 int
scoreboard players operation temp2 int %= 60 int
execute store result score temp1 int run scoreboard players operation temp int /= 60 int
scoreboard players operation temp int /= 60 int
scoreboard players operation temp1 int %= 60 int
tellraw @s [{"text":"个人记录","color":"gray"},{"text":" "},{"score":{"name":"temp","objective":"int"}},{"text":"时"},{"score":{"name":"temp1","objective":"int"}},{"text":"分"},{"score":{"name":"temp2","objective":"int"}},{"text":"秒"}]


scoreboard players operation temp int = parkour_min int
execute store result score temp2 int run scoreboard players operation temp int /= 20 int
scoreboard players operation temp2 int %= 60 int
execute store result score temp1 int run scoreboard players operation temp int /= 60 int
scoreboard players operation temp int /= 60 int
scoreboard players operation temp1 int %= 60 int
tellraw @s [{"text":"历史记录","color":"gold"},{"text":" "},{"score":{"name":"temp","objective":"int"},"color":"gold"},{"text":"时","color":"gold"},{"score":{"name":"temp1","objective":"int"},"color":"gold"},{"text":"分","color":"gold"},{"score":{"name":"temp2","objective":"int"},"color":"gold"},{"text":"秒","color":"gold"},{"text":"(由玩家"},{"nbt":"Items[0].tag.parkour_min","block":"0 0 0","interpret":"true"},{"text":"创造)"}]