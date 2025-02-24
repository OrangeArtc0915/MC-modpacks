data modify block 0 0 0 Items[0].tag.ctmp set from entity @s Item.tag.uuid
execute store result score result int run data modify block 0 0 0 Items[0].tag.ctmp set from entity @a[tag=tmp78,limit=1] UUID
execute if score result int matches 0 run kill @s