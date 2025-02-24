function math:3get-length
scoreboard players operation temp int = @s speed
scoreboard players operation temp int *= 20 int
tp @e[tag=math_marker,limit=1] ~ ~ ~
execute at @s facing entity @e[tag=math_marker,limit=1] eyes run tp @s ~ ~ ~ ~ 0.0
function play:sold/move
execute if score result int <= temp int run function play:sold/reached