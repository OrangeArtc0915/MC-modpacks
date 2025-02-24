effect give @s minecraft:levitation 1 255 true
tp @s 1110 115 748
clear @s
function main:develop/mobs/kits
replaceitem entity @s hotbar.8 barrier{back:true,display:{Name:"\"§c按F返回\""}}
gamemode adventure @s
tag @s add develop_mobs
schedule function main:develop/mobs/upd 1s