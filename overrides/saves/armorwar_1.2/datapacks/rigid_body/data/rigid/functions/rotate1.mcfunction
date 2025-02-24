execute unless data entity @s Pose.LeftArm run data modify entity @s Pose.LeftArm set value [0.0f,0.0f,0.001f]
execute unless data entity @s Pose.RightArm run data modify entity @s Pose.RightArm set value [0.0f,0.0f,0.001f]
execute unless data entity @s Pose.LeftLeg run data modify entity @s Pose.LeftLeg set value [0.0f,0.0f,0.001f]
execute unless data entity @s Pose.RightLeg run data modify entity @s Pose.RightLeg set value [0.0f,0.0f,0.001f]

execute unless entity @s[tag=leftarmed] store result entity @s Pose.LeftArm[0] float 0.01 run scoreboard players get @s phi_a0
execute store result entity @s Pose.RightArm[0] float 0.01 run scoreboard players get @s phi_a1
execute store result entity @s Pose.LeftLeg[0] float 0.01 run scoreboard players get @s phi_l0
execute store result entity @s Pose.RightLeg[0] float 0.01 run scoreboard players get @s phi_l1