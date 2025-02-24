execute unless entity @s[tag=inited] run function mtsn:init
execute if score monster_count int < monster_max int run scoreboard players add @s mtsntimer 1
execute if score @s mtsntimer = @s mtsnp run function mtsn:spawn