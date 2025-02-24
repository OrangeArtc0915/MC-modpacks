data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.present_wave.mobs[0].mob
execute store result score mob_countdown mtsnVar run data get block 0 0 0 Items[0].tag.present_wave.mobs[0].time
data remove block 0 0 0 Items[0].tag.present_wave.mobs[0]
function mobs:spawn
execute unless data block 0 0 0 Items[0].tag.present_wave.mobs[0] run data remove block 0 0 0 Items[0].tag.present_wave
execute if score mob_countdown mtsnVar matches 0 run function mtsn:next_mob
