clear @s barrier
kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}},tag=!button]
give @s barrier{back:true,display:{Name:"\"§4返回大厅\""}}
tellraw @s {"text":"§c请不要丢掉屏障！"}
scoreboard players reset @s drop_barrier