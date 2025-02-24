scoreboard players add @s afk 1
execute if score @s afk matches 1210 run tellraw @s {"text":"<","extra":[{"text":"bug鸡","color":"red"},{"text":"> 挂机警告！ 请移动，防止进入挂机室"}]}
execute if score @s afk matches 1210 run playsound minecraft:block.note_block.pling player @s
execute if score @s afk matches 1220 run function main:hang


execute as @a[scores={used_map=1..}] at @s run summon fireball ^ ^2.0 ^1.0 {Motion:[0.0d,0.0d,0.0d],Tags:["tmp","fb"]}
execute as @a[scores={used_map=1..}] at @s run summon fireball ^1.0 ^1.4 ^1.0 {Motion:[0.0d,0.0d,0.0d],Tags:["tmp","fb"]}
execute as @a[scores={used_map=1..}] at @s run summon fireball ^-1.0 ^1.4 ^1.0 {Motion:[0.0d,0.0d,0.0d],Tags:["tmp","fb"]}