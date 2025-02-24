# 将序号为rand musicVar的元素放到0号
data modify storage psp:result self.music_box append from storage psp:result self.music_box[0]
data remove storage psp:result self.music_box[0]
scoreboard players remove rand musicVar 1
execute if score rand musicVar matches 1.. run function music:ite