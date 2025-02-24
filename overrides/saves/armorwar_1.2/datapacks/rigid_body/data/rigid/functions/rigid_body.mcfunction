execute unless entity @s[tag=rigid_set] run function rigid:set
execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.0f,0.0f,0.001f]
execute store result entity @s Pose.Head[0] float 0.0001 run scoreboard players get @s rigid_phi0
execute store result entity @s Pose.Head[1] float 0.0001 run scoreboard players get @s rigid_phi1
execute store result entity @s Pose.Head[2] float 0.0001 run scoreboard players get @s rigid_phi2

#转动
execute if score rigid_display int matches 1 run function rigid:display
function rigid:rotate_body

#判断是否需要平动
scoreboard players set temp int 0
execute unless score @s volecity_u matches 0 run scoreboard players set temp int 1
execute unless score @s volecity_v matches 0 run scoreboard players set temp int 1
execute unless score @s volecity_w matches 0 run scoreboard players set temp int 1
execute if score temp int matches 0 run data modify entity @s[tag=noG] NoGravity set value 1b
execute if score temp int matches 1 run function rigid:move