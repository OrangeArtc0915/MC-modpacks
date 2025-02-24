scoreboard players operation temp1 int = @s muid
execute as @a[tag=soldier] if score @s target = temp1 int run tag @s add tmp

scoreboard players add @s damage_font 1
scoreboard players operation @s damage_font %= 10 int

execute store result score temp5 int if entity @e[tag=dp_damage]
execute if score temp5 int matches ..9 if entity @a[tag=tmp] run summon armor_stand 0 11 0 {Tags:["tmp1","dp_damage"],Invulnerable:1b,Small:1b,CustomNameVisible:1b,CustomName:'{"text":""}'}
setblock 0 11 0 air
scoreboard players operation temp int /= 10 int
setblock 0 11 0 oak_sign{Text1:'[{"text":"❤","color":"red","font":"size:2x"},{"score":{"name":"temp","objective":"int"},"font":"size:2x"}]'}
data modify entity @e[tag=tmp1,limit=1] CustomName set from block 0 11 0 Text1
execute at @s anchored eyes run tp @e[tag=tmp1,limit=1] ^ ^-0.8 ^0.3

execute if score @s damage_font matches 0 at @a[tag=tmp,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^-0.45 ^0.15 ^-0.15
execute if score @s damage_font matches 1 at @a[tag=tmp,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^-0.35 ^0.15 ^-0.15
execute if score @s damage_font matches 2 at @a[tag=tmp,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^0.30 ^0.15 ^0.15
execute if score @s damage_font matches 3 at @a[tag=tmp,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^0.45 ^0.15 ^-0.15
execute if score @s damage_font matches 4 at @a[tag=tmp,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^-0.30 ^0.15 ^0.15
execute if score @s damage_font matches 5 at @a[tag=tmp,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^-0.40 ^0.15 ^0.15
execute if score @s damage_font matches 6 at @a[tag=tmp,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^0.30 ^0.15 ^-0.15
execute if score @s damage_font matches 7 at @a[tag=tmp,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^-0.35 ^0.15 ^0.15
execute if score @s damage_font matches 8 at @a[tag=tmp,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^0.45 ^0.15 ^-0.15
execute if score @s damage_font matches 9 at @a[tag=tmp,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^-0.40 ^0.15 ^0.15

data modify entity @e[tag=tmp1,limit=1] Motion set from entity @e[tag=math_marker,limit=1] Pos
scoreboard players set @e[tag=tmp1,limit=1] killtime 5

tag @e remove tmp1
tag @e remove tmp