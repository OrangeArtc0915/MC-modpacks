scoreboard players set @s root_main1 0

execute store result score max int run scoreboard players operation min int = @s root_main0
scoreboard players add max int 1200000
function math:random
scoreboard players operation @s root_main0 = random int
scoreboard players operation min int = random int
function tree:grow/root/main

execute store result score max int run scoreboard players operation min int = @s root_main0
scoreboard players add max int 1200000
function math:random
scoreboard players operation @s root_main0 = random int
scoreboard players operation min int = random int
function tree:grow/root/main

execute store result score max int run scoreboard players operation min int = @s root_main0
scoreboard players add max int 1200000
function math:random
scoreboard players operation @s root_main0 = random int
function tree:grow/root/main

tag @s add tree_rootsu
tag @s[tag=tree_rooted1] remove tree_rooted
tag @s add tree_rooted1