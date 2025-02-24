#effect give @a[tag=develop_mobs] minecraft:levitation 1 255 true
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"up_page"}}]}] run function main:develop/mobs/up_page
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"down_page"}}]}] run function main:develop/mobs/down_page
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"dele_page"}}]}] run function main:develop/mobs/dele_page
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"add_page"}}]}] run function main:develop/mobs/add_page
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"edit_page"}}]}] run function main:develop/mobs/edit_page
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"edit_back"}}]}] run function main:develop/mobs/edit_back
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"edit_page0"}}]}] run function main:develop/mobs/edit_page0
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"edit_page1"}}]}] run function main:develop/mobs/edit_page1
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"edit_page2"}}]}] run function main:develop/mobs/edit_page2
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"edit_page3"}}]}] run function main:develop/mobs/edit_page3
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"edit_page4"}}]}] run function main:develop/mobs/edit_page4
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"edit_page5"}}]}] run function main:develop/mobs/edit_page5
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"edit_page6"}}]}] run function main:develop/mobs/edit_page6
execute as @a[tag=develop_mobs,nbt={Inventory:[{Slot:-106b,tag:{develop_mobs:true,dmobs:"edit_name"}}]}] run function main:develop/mobs/edit_name

execute if entity @e[tag=type_show] run function main:develop/mobs/type/show
execute if entity @e[tag=health_show] run function main:develop/mobs/health/show
execute if entity @e[tag=mp_show] run function main:develop/mobs/mp/show
execute if entity @e[tag=dp_show] run function main:develop/mobs/pp/show
execute if entity @e[tag=at_show] run function main:develop/mobs/at/show
execute if entity @e[tag=at_cd_show] run function main:develop/mobs/at_cd/show
execute if entity @e[tag=rew_show] run function main:develop/mobs/rew/show
execute if entity @e[tag=rat_show] run function main:develop/mobs/rat/show
execute if entity @e[tag=rat_cd_show] run function main:develop/mobs/rat_cd/show
execute if entity @e[tag=rat_dis_show] run function main:develop/mobs/rat_dis/show
execute if entity @e[tag=rat_s_show] run function main:develop/mobs/rat/s_show
execute if entity @e[tag=fly_show] run function main:develop/mobs/fly/show
execute if entity @e[tag=sp_show] run function main:develop/mobs/sp/show
execute if entity @e[tag=mhp_show] run function main:develop/mobs/mhp/show
execute if entity @e[tag=rew_show] run function main:develop/mobs/rew/show
execute if entity @e[tag=head_show] run function main:develop/mobs/head/show
execute if entity @e[tag=chest_show] run function main:develop/mobs/chest/show
execute if entity @e[tag=leg_show] run function main:develop/mobs/leg/show
execute if entity @e[tag=foot_show] run function main:develop/mobs/foot/show
execute if entity @e[tag=hand0_show] run function main:develop/mobs/hand0/show
execute if entity @e[tag=hand1_show] run function main:develop/mobs/hand1/show

scoreboard players operation temp int = mobs_page int
scoreboard players add temp int 1
title @a[tag=develop_mobs] actionbar [{"text":"正在编辑"},{"score":{"name":"temp","objective":"int"}},{"text":"号怪物"}]