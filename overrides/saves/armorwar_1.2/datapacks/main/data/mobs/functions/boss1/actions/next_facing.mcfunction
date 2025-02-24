execute unless data entity @s ArmorItems[3].tag.path[0] run scoreboard players set g_hp int 0
execute store result score @s facing run data get entity @s ArmorItems[3].tag.path[0]
data remove entity @s ArmorItems[3].tag.path[0]

scoreboard players operation temp int = @s facing
execute as @e[tag=mpoint] if score @s int = temp int run tag @s add tmp

execute at @s facing entity @e[tag=tmp,limit=1] feet rotated ~ 0.0 run tp @s ~ ~ ~ ~ ~
scoreboard players set @s rigid_move 1

tag @e remove tmp

scoreboard players set @s change_reach 12
function mobs:boss1/actions/re_walk