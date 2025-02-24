tag @e[x=14,y=5,z=35,distance=..5,type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] add teapo
summon minecraft:area_effect_cloud 0 5 0 {Tags:["rtea1","rtea"],Duration:2s}
summon minecraft:area_effect_cloud 0 5 0 {Tags:["rtea2","rtea"],Duration:2s}
summon minecraft:area_effect_cloud 0 5 0 {Tags:["rtea3","rtea"],Duration:2s}
summon minecraft:area_effect_cloud 0 5 0 {Tags:["rtea4","rtea"],Duration:2s}
summon minecraft:area_effect_cloud 0 5 0 {Tags:["rtea5","rtea"],Duration:2s}
summon minecraft:area_effect_cloud 0 5 0 {Tags:["rtea6","rtea"],Duration:2s}
summon minecraft:area_effect_cloud 0 5 0 {Tags:["rtea7","rtea"],Duration:2s}
summon minecraft:area_effect_cloud 0 5 0 {Tags:["rtea8","rtea"],Duration:2s}
summon minecraft:area_effect_cloud 0 5 0 {Tags:["rtea9","rtea"],Duration:2s}
summon minecraft:area_effect_cloud 0 5 0 {Tags:["rtea10","rtea"],Duration:2s}
summon minecraft:area_effect_cloud 0 5 0 {Tags:["rtea11","rtea"],Duration:2s}
summon minecraft:area_effect_cloud 0 5 0 {Tags:["rtea12","rtea"],Duration:2s}
tag @e[tag=rtea,sort=random,limit=1] add tea
execute as @e[tag=tea,tag=rtea1] at @s run data merge entity @e[tag=teapo,limit=1] {Item:{id:"minecraft:potion",tag:{CustomPotionColor:13692275,display:{Name:"\"普通茶\""},CustomPotionEffects:[{Id:1,Amplifier:1,Duration:50000},{Id:11,Amplifier:1,Duration:50000}]}}}
execute as @e[tag=tea,tag=rtea2] at @s run data merge entity @e[tag=teapo,limit=1] {Item:{id:"minecraft:potion",tag:{CustomPotionColor:9020466,display:{Name:"\"铁观音\""},CustomPotionEffects:[{Id:1,Amplifier:2,Duration:10000},{Id:5,Amplifier:2,Duration:10000}]}}}
execute as @e[tag=tea,tag=rtea3] at @s run data merge entity @e[tag=teapo,limit=1] {Item:{id:"minecraft:potion",tag:{CustomPotionColor:14348941,display:{Name:"\"小罐茶\""},CustomPotionEffects:[{Id:1,Amplifier:2,Duration:6000},{Id:5,Amplifier:2,Duration:6000},{Id:11,Amplifier:2,Duration:6000}]}}}
execute as @e[tag=tea,tag=rtea4] at @s run data merge entity @e[tag=teapo,limit=1] {Item:{id:"minecraft:potion",tag:{CustomPotionColor:15459686,display:{Name:"\"大罐茶\""},CustomPotionEffects:[{Id:1,Amplifier:5,Duration:20000},{Id:22,Amplifier:5,Duration:20000}]}}}
execute as @e[tag=tea,tag=rtea5] at @s run data merge entity @e[tag=teapo,limit=1] {Item:{id:"minecraft:potion",tag:{CustomPotionColor:15428454,display:{Name:"\"普通苹果酒\""},CustomPotionEffects:[{Id:1,Amplifier:2,Duration:20000},{Id:18,Amplifier:2,Duration:20000}]}}}
execute as @e[tag=tea,tag=rtea6] at @s run data merge entity @e[tag=teapo,limit=1] {Item:{id:"minecraft:potion",tag:{CustomPotionColor:12139575,display:{Name:"\"附魔苹果酒\""},CustomPotionEffects:[{Id:1,Amplifier:5,Duration:28000},{Id:5,Amplifier:5,Duration:28000},{Id:22,Amplifier:5,Duration:28000}]}}}
execute as @e[tag=tea,tag=rtea7] at @s run data merge entity @e[tag=teapo,limit=1] {Item:{id:"minecraft:potion",tag:{CustomPotionColor:3834684,display:{Name:"\"龙井茶\""},CustomPotionEffects:[{Id:5,Amplifier:2,Duration:60000}]}}}
execute as @e[tag=tea,tag=rtea8] at @s run data merge entity @e[tag=teapo,limit=1] {Item:{id:"minecraft:potion",tag:{CustomPotionColor:3057768,display:{Name:"\"古树春茶\""},CustomPotionEffects:[{Id:1,Amplifier:2,Duration:23300},{Id:21,Amplifier:2,Duration:23300}]}}}
execute as @e[tag=tea,tag=rtea9] at @s run data merge entity @e[tag=teapo,limit=1] {Item:{id:"minecraft:potion",tag:{CustomPotionColor:0,display:{Name:"\"毒品\""},CustomPotionEffects:[{Id:5,Amplifier:2,Duration:6000},{Id:9,Amplifier:2,Duration:6000},{Id:21,Amplifier:2,Duration:6000}]}}}
execute as @e[tag=tea,tag=rtea10] at @s run data merge entity @e[tag=teapo,limit=1] {Item:{id:"minecraft:potion",tag:{CustomPotionColor:0,display:{Name:"\"毒品\""},CustomPotionEffects:[{Id:5,Amplifier:2,Duration:6000},{Id:9,Amplifier:2,Duration:6000},{Id:22,Amplifier:2,Duration:6000}]}}}
execute as @e[tag=tea,tag=rtea11] at @s run data merge entity @e[tag=teapo,limit=1] {Item:{id:"minecraft:potion",tag:{CustomPotionColor:5660370,CustomPotionEffects:[{Id:5,Amplifier:1,Duration:4000},{Id:9,Amplifier:1,Duration:4000},{Id:22,Amplifier:1,Duration:4000}],display:{Name:"\"啤酒\""}}}}
execute as @e[tag=tea,tag=rtea12] at @s run data merge entity @e[tag=teapo,limit=1] {Item:{id:"minecraft:potion",tag:{CustomPotionColor:15986121,CustomPotionEffects:[{Id:1,Amplifier:3,Duration:2000},{Id:5,Amplifier:3,Duration:2000}],display:{Name:"\"豆浆\""}}}}