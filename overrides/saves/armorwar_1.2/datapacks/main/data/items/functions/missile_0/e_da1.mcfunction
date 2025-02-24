scoreboard players operation input int = tempx0 int
function math:0sqrt
scoreboard players operation tempx0 int = result int

scoreboard players operation result int = @e[tag=tmp,limit=1] explode_d
scoreboard players operation result int *= 1000 int
scoreboard players operation result int /= tempx0 int

execute store result score temp int run scoreboard players operation @s pdamage += result int
scoreboard players operation result int /= 2 int
scoreboard players operation @s mdamage += result int

execute at @s[tag=!boss] run function play:mon/blood
scoreboard players set @s blood_count 1