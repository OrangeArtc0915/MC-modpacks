playsound minecraft:entity.arrow.hit_player player @a[distance=..20] ~ ~ ~ 5 2
execute store result score mobs_page int run data get block 0 0 0 Items[0].tag.mobs
data modify block 0 0 0 Items[0].tag.mobs append value {item:{},entity:{type:"zombie",health:20.0f}}
data modify block 0 0 0 Items[0].tag.mobs[-1].item set value {id:"minecraft:sheep_spawn_egg",Count:1b}
function main:develop/mobs/kits
function main:develop/mobs/upd