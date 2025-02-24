tag @s remove attacking
tag @s remove reached
scoreboard players set @s target 0
scoreboard players set @s speed 0
scoreboard players set @s change_attack 5
scoreboard players operation temp int = @s int
execute at @s facing entity @e[tag=tmp33,limit=1] eyes run tp @s ~ ~ ~ ~ 0.0