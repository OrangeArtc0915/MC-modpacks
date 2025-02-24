tag @s add tmp
execute as @e[tag=music_set] run function music:kill
tag @s remove tmp

function psp:self
# 停止所有音乐
stopsound @s music
# 生成0~size-1的随机数，用于随机选取音乐
loot spawn ~ ~ ~ loot music:rand
execute store result score rand musicVar run data get entity @e[type=item,distance=..1,limit=1,nbt={Item: {tag: {id: 'music:rand'}}}] Item.tag.AttributeModifiers[0].Amount 10000
kill @e[type=item,distance=..1,limit=1,nbt={Item: {tag: {id: 'music:rand'}}}]
execute store result score size musicVar run data get storage psp:result self.music_box
scoreboard players operation rand musicVar *= size musicVar
scoreboard players set 10000 musicVar 10000
scoreboard players operation rand musicVar /= 10000 musicVar
# 将序号为该随机数的元素放到0号
execute if score rand musicVar matches 1.. run function music:ite
# 读取玩家自己的UUID，用于给scheduler选中实体
data modify storage music:nbt uuid set from entity @s UUID
# 调用scheduler播放一首音乐
summon item ~ ~ ~ {Item: {id: 'stone_button', Count: 1b}, PickupDelay: 32767, Age: -32768, Invulnerable: 1b, NoGravity: 1b, Tags: ['scheduler.item', 'music.player.0',"music_set"]}
execute as @e[type=item,tag=music.player.0,limit=1,distance=..1] run function music:player
execute store result score tempm int run data get storage psp:result self.music_box[0].time 20
# 如果不循环，则删除音乐
execute store result score loop musicVar run data get storage psp:result self.music_box[0].loop
execute if score loop musicVar matches 0 run data remove storage psp:result self.music_box[0]
# 如果音乐盒还有音乐，则在self.music_box[0].time秒后再次以玩家为执行者调用本函数
execute store result score size musicVar run data get storage psp:result self.music_box
execute if score size musicVar matches 1.. run summon item ~ ~ ~ {Item: {id: 'stone_button', Count: 1b,tag:{command:'execute as @a[tag=scheduler.mark,limit=1] run function music:play'}}, PickupDelay: 32767, Age: -32768, Invulnerable: 1b, NoGravity: 1b, Tags: ['scheduler.item', 'music.scheduler.0',"music_set"]}
execute if score size musicVar matches 1.. as @e[type=item,tag=music.scheduler.0,limit=1,distance=..1] run function music:scheduler
# 将修改后的音乐盒储存回去
function psp:store_self

tag @s remove music_cleared