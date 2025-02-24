scoreboard players reset @s zy
scoreboard players set @s damage 0
tag @a[tag=needreg] add needrml
tag @a[tag=needms] add needrml
tag @a[tag=needlg] add needrml
scoreboard players add @a fpg 0
scoreboard players add @a[scores={fpg=..10}] fpg 1
tag @a[scores={fpg=1..5}] add needreg
tag @a[tag=needreg] add cank
execute if entity @a[tag=needreg] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:["1","tmp"]}
execute if entity @a[tag=needreg] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:["2","tmp"]}
tag @e[tag=tmp,limit=1,sort=random] add tmp1
execute if entity @e[tag=tmp1,tag=1] run scoreboard players set @a[tag=needreg] hall 1
execute if entity @e[tag=tmp1,tag=2] run scoreboard players set @a[tag=needreg] hall 2
kill @e[tag=tmp]
scoreboard players set @a[tag=needreg] wrc 0
scoreboard players set @a[tag=needreg] wzc 0
scoreboard players add @a[tag=needreg] reg 0
scoreboard players enable @a[tag=needreg] reg
title @a[tag=needreg] actionbar {"text":"请使用</trigger reg set 密码>来注册您的账户！","color":"green"}
effect give @a[tag=needrml] minecraft:slowness 1 255 true
effect give @a[tag=needrml] minecraft:blindness 2 1 true
effect give @a[tag=needrml] minecraft:resistance 5 5 true
execute as @a[tag=needreg] run scoreboard players operation @s password = @s reg
execute as @a[tag=needreg,scores={password=1..}] run tag @s add needms
scoreboard players set @a[tag=needms,tag=needreg] reg 0
scoreboard players set @a[tag=needreg] gamemode 2
tag @a[tag=needms] remove needreg
tag @a[scores={reg=0},tag=needms] add nopd
title @a[tag=needms] actionbar {"text":"请再次使用</trigger reg set 密码>来确认！"}
scoreboard players enable @a[tag=needms] reg
tag @a[scores={reg=1..}] remove nopd
execute as @a[tag=needms,scores={reg=1..}] run scoreboard players operation @s reg -= @s password
execute as @a[tag=needms,scores={reg=0},tag=!nopd] run tellraw @s {"text":"注册成功！","color":"green","extra":[{"text":"请牢记您的密码：","color":"white"},{"score":{"name":"@s","objective":"password"},"color":"gold"}]}
tag @a[tag=needms,scores={reg=0},tag=!nopd] add regok
tag @a[tag=needms,scores={reg=0},tag=!nopd] remove needms
tag @a[tag=!nopd,tag=needms,scores={password=..-2}] add ftms
tag @a[tag=!nopd,tag=needms,scores={password=1..}] add ftms
tellraw @a[tag=ftms] {"text":"密码错误!","color":"red"}
tag @a[tag=ftms] add needreg
tag @a[tag=ftms] remove nopd
tag @a[tag=ftms] remove needms
scoreboard players set @a[tag=ftms] reg 0
tag @a remove ftms
scoreboard players reset @a[tag=!needms,tag=!needreg] reg
scoreboard players enable @a[tag=needlg] login
title @a[tag=needlg] actionbar {"text":"请使用</trigger login set 密码>登录游戏","color":"gold"}
scoreboard players add @a[tag=needlg] login 0
tag @a[tag=needlg,scores={login=0}] add lnopd
tag @a[tag=needlg,scores={login=1..}] remove lnopd
execute as @a[tag=needlg,tag=!lnopd] run scoreboard players operation @s login -= @s password
tellraw @a[tag=needlg,scores={login=0},tag=!lnopd] {"text":"登录成功！","color":"green"}
scoreboard players enable @a[tag=needlg,scores={login=0},tag=!lnopd] rejoin
execute as @a[tag=needlg,scores={login=0},tag=!lnopd] run tellraw @s {"text":"欢迎回来, ","extra":[{"selector":"@s"},{"text":" !"}]}
scoreboard players set @a[tag=needlg,scores={login=0},tag=!lnopd] login 0
tag @a[tag=needlg,scores={login=0},tag=!lnopd] remove needlg
scoreboard players reset @a[tag=!needlg] login
tag @a[tag=needlg,scores={login=..-1},tag=!lnopd] add flg
tag @a[tag=needlg,scores={login=1..},tag=!lnopd] add flg
tellraw @a[tag=flg] {"text":"密码错误！","color":"red"}
scoreboard players set @a[tag=flg] login 0
tag @a remove flg
tag @a remove needrml