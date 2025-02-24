function music:clear
execute unless data storage psp:result self.music_box run data modify storage psp:result self.music_box set value []

function psp:self

scoreboard players set min int 0
scoreboard players set max int 399

function math:random
scoreboard players operation random int /= 100 int
execute if score random int matches 0 run data modify storage psp:result self.music_box append from block 0 0 0 Items[0].tag.musics.hall0[0]
execute if score random int matches 1 run data modify storage psp:result self.music_box append from block 0 0 0 Items[0].tag.musics.hall0[1]
execute if score random int matches 2 run data modify storage psp:result self.music_box append from block 0 0 0 Items[0].tag.musics.hall0[2]
execute if score random int matches 3 run data modify storage psp:result self.music_box append from block 0 0 0 Items[0].tag.musics.hall0[3]

function math:random
scoreboard players operation random int /= 100 int
execute if score random int matches 0 run data modify storage psp:result self.music_box append from block 0 0 0 Items[0].tag.musics.hall1[0]
execute if score random int matches 1 run data modify storage psp:result self.music_box append from block 0 0 0 Items[0].tag.musics.hall1[1]
execute if score random int matches 2 run data modify storage psp:result self.music_box append from block 0 0 0 Items[0].tag.musics.hall1[2]
execute if score random int matches 3 run data modify storage psp:result self.music_box append from block 0 0 0 Items[0].tag.musics.hall1[3]

function psp:store_self

function music:play