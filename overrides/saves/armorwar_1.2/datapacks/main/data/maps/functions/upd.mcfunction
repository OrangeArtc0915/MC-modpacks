execute as @e[tag=map_set,tag=!map_name,tag=!map_skull] run function maps:set_remove

scoreboard players operation temp int = chapter_select int
scoreboard players remove temp int 1
function maps:ctmp
data modify block 0 0 0 Items[0].tag.ctmp.spawn.pos set value [-25.0d,62.0d,84.0d]
data modify block 0 0 0 Items[0].tag.ctmp.spawn.rotation set value [-150.0f,0.0f]
data modify block 0 0 0 Items[0].tag.ctmp.spec set value ["map_button","map_set","map_left","map_chapter"]
scoreboard players set turn int 1
execute positioned -25.0 62.0 84.0 run function mobs:spawn1
scoreboard players set @e[tag=result,limit=1] ctimer 2

scoreboard players operation temp int = chapter_select int
function maps:ctmp
data modify block 0 0 0 Items[0].tag.ctmp.spawn.pos set value [-26.5d,62.0d,82.5d]
data modify block 0 0 0 Items[0].tag.ctmp.spawn.rotation set value [180.0f,0.0f]
data modify block 0 0 0 Items[0].tag.ctmp.spec set value ["map_button","map_set","map_mid","map_chapter"]
scoreboard players set turn int 0
execute positioned -26.5 62.0 82.5 run function mobs:spawn1
scoreboard players operation temp int = chapter_select int
function maps:chapter

execute if entity @e[tag=map_name] as @e[tag=map_name,limit=1] run function maps:name
execute unless entity @e[tag=map_name] run function maps:summon_name

data modify block -36 53 78 {} merge from block 0 0 0 Items[0].tag.ctmp.structure_block
setblock -36 52 78 air
setblock -36 52 78 redstone_block
scoreboard players set @e[tag=result,limit=1] ctimer 2

execute if score chapter_select int matches 0 run function maps:load0
execute if score chapter_select int matches 1 run function maps:load1
execute if score chapter_select int matches 2.. run function maps:load


scoreboard players operation temp int = chapter_select int
scoreboard players add temp int 1
function maps:ctmp
data modify block 0 0 0 Items[0].tag.ctmp.spawn.pos set value [-28.0d,62.0d,84.0d]
data modify block 0 0 0 Items[0].tag.ctmp.spawn.rotation set value [150.0f,0.0f]
data modify block 0 0 0 Items[0].tag.ctmp.spec set value ["map_button","map_set","map_right","map_chapter"]
scoreboard players set turn int -1
execute positioned -28.0 62.0 84.0 run function mobs:spawn1
scoreboard players set @e[tag=result,limit=1] ctimer 2

execute as @e[tag=map_set] at @s run tp @s ~ ~ ~ ~ ~