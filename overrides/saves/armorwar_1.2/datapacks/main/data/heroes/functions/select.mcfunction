clear @s
execute at @s store result score @s hr run data get entity @e[tag=hero_as,limit=1,sort=nearest] ArmorItems[3].tag.hr
execute at @s run playsound minecraft:entity.ender_dragon.flap player @s ~ ~ ~ 1 2