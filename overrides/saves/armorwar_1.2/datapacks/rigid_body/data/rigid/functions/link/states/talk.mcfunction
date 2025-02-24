scoreboard players add @s rigid_timer 1

execute if score @s rigid_timer matches 10 at @s run playsound minecraft:block.lever.click player @p ~ ~ ~ 4.0 2
execute if score @s rigid_timer matches 10 at @s run tellraw @p {"text":"<fire_golem> hi"}
execute if score @s rigid_timer matches 25 at @s run playsound minecraft:block.lever.click player @p ~ ~ ~ 4.0 2
execute if score @s rigid_timer matches 25 at @s run tellraw @p {"text":"<fire_golem> I am a golem,and I like burning zombies！"}

execute if score @s rigid_timer matches 50.. run function rigid:link/actions/s_hang