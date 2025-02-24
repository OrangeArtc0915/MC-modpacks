scoreboard players set game_end int 0
execute unless entity @s[tag=waved] run function play:wave_m/next_wave
tag @s add waved

#结束该波
execute unless entity @e[type=item,tag=wave_spawning] unless entity @e[tag=monster] if data block 0 0 0 Items[0].tag.playing.waves[0] run function play:wave_m/end
execute unless entity @e[type=item,tag=wave_spawning] unless entity @e[tag=monster] unless data block 0 0 0 Items[0].tag.playing.waves[0] run scoreboard players set game_end int 1