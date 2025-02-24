execute as @e[tag=wave_spawning] run function mtsn:main
kill @e[tag=killed]
execute if entity @a[x=0,y=5,z=0,distance=..10] run function main:spawn
execute if score waiting int matches 1 run function maps:main
execute if score hring int matches 1 run function heroes:main
execute if score treeing int matches 1 run function tree:main
execute if score libing int matches 1 run function lib:main
execute as @a[tag=inhall,tag=!developing,gamemode=adventure] run function hall:gui
scoreboard players add main1 timer 1
scoreboard players add @e[tag=stimer] stimer 1
execute if score main1 timer >= 5 int run function main:main1
execute as @e[tag=!parkour] at @s if entity @s[y=-15,distance=..10] run function main:void
execute if entity @a[tag=parkour] run function main:parkour

execute as @a[scores={lg=1..}] run function main:lg

execute as @a[tag=!pmarked] run function main:pmark

execute if score developing int matches 1 run function main:develop/main

execute if score gaming int matches 1 run function play:main

execute as @e[tag=block_change] at @s run function main:block_change

execute as @e[tag=aec] run data modify entity @s Age set value 0

kill @e[type=item,nbt={Item:{tag:{ui:1b}}}]

execute as @a[scores={tutor=1..}] run function tutor:main

execute if entity @a[tag=stopped] run function main:stopped
scoreboard players set @a crc 0
scoreboard players set @a att 0
scoreboard players set @a rctest 0
scoreboard players set @a jump 0
scoreboard players set @a shift 0