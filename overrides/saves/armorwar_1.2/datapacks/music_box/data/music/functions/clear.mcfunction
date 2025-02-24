function psp:self

tag @s add tmp78
execute as @e[tag=music_set] run function music:kill
tag @s remove tmp78

# 停止播放所有音乐
stopsound @s music
# 清空音乐盒
data remove storage psp:result self.music_box[]
# 将修改后的音乐盒储存回去
function psp:store_self
tag @s add music_cleared