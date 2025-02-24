execute at @s run scoreboard players set @a[distance=..2.5] result 0
execute at @s run scoreboard players set @a[distance=..2.5,gamemode=adventure] result 1
execute at @s run gamemode creative @a[distance=..2.5]
execute at @s run gamemode spectator @a[distance=..2.5]
execute at @s run gamemode adventure @a[distance=..2.5,scores={result=1}]
data modify entity @s Health set value 0.0f
kill @s
execute at @s run tp @s ~ -1000 ~
scoreboard players operation temp int = @s muid
execute as @e[tag=monster] if score @s target = temp int run scoreboard players set @s target 0
tag @s remove monster