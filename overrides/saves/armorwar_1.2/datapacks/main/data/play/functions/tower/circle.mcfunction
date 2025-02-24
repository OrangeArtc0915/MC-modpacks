scoreboard players add @s CD 10
execute if score @s CD <= tower_r set run scoreboard players operation r int = @s CD
execute if score @s CD > tower_r set run scoreboard players operation r int = tower_r set
function math:60_radius
execute at @e[tag=result] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:red_carpet"},NoGravity:1b,Tags:["dsp_base"]}