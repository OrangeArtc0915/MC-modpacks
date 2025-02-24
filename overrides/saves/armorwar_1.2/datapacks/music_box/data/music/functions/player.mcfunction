# 向player物品传参
data modify entity @s Item.tag.time set value 1
data modify entity @s Item.tag.uuid set from storage music:nbt uuid
data modify entity @s Item.tag.command set from storage psp:result self.music_box[0].command
tag @s remove music.player.0