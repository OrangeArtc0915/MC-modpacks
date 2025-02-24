tag @s remove hero_reached
execute store result score temp int run data get entity @s ArmorItems[3].tag.hr
execute as @e[tag=hero_set] if score @s hr = temp int run tp @s 0 0 0
execute as @e[tag=hero_set] if score @s hr = temp int run kill @s