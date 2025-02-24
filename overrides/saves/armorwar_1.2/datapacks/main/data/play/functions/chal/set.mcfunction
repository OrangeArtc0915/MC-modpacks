data modify entity @s ArmorItems[3].tag.tower_type set from block 0 0 0 Items[0].tag.tree3[0].tower_type
data modify entity @s ArmorItems[3].tag.towers set from block 0 0 0 Items[0].tag.tree3[0].towers
data modify entity @s ArmorItems[3].tag.stars set from block 0 0 0 Items[0].tag.tree3[0].stars
data modify entity @s ArmorItems[3].tag.hero set from block 0 0 0 Items[0].tag.tree3[0].hero
scoreboard players set @s int 1
execute if data entity @s ArmorItems[3].tag.tower_type store result score chal_towert_r int run data get entity @s ArmorItems[3].tag.tower_type
execute if data entity @s ArmorItems[3].tag.towers store result score chal_towers_r int run data get entity @s ArmorItems[3].tag.towers
execute if data entity @s ArmorItems[3].tag.stars store result score chal_stars_r int run data get entity @s ArmorItems[3].tag.stars
execute if data entity @s ArmorItems[3].tag.hero store result score chal_hero_r int run data get entity @s ArmorItems[3].tag.hero
scoreboard players set chal_towers int 0