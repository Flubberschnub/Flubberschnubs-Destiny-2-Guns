##loading
scoreboard players add @s[tag=reloading] reloadtimer 1
scoreboard players add alternator reloadtimer 1
execute if score alternator reloadtimer matches 1 run scoreboard players add @s[tag=reloading] reloadtimer 1
execute if score alternator reloadtimer matches 2.. run scoreboard players reset alternator reloadtimer
execute as @s[tag=reloading] as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1}}}] if score @s reloadtimer matches ..42 run schedule function guns:recluse/schedulefastloading 1t append
execute as @s[tag=reloading] if score @s reloadtimer matches 43.. run function guns:recluse/fullmag
execute as @s[tag=reloading] if score @s reloadtimer matches 43.. run tag @s remove reloading
#execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 41.. run function guns:graviton/resetads
#execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 41.. run function guns:general/setmag
execute if score @s reloadtimer matches 43.. run scoreboard players reset @s reloadtimer

##animation
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 1 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:131,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 2 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:132,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 3 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:133,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 4 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:134,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 5 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:135,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 6 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:136,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 7 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:137,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 8 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:138,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 9 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:139,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 10 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:140,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 11 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:141,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 12 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:142,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 13 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:143,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 14 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:144,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 15 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:145,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 16 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:146,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 17 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:147,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 18 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:148,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 19 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:149,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 20 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:150,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 21 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:151,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 22 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:152,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 23 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:153,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 24 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:154,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 25 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:155,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 26 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:156,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 27 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:157,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 28 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:158,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 29 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:159,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 30 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:160,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 31 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:161,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 32 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:162,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 33 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:163,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 34 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:164,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 35 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:165,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 36 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:166,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 37 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:167,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 38 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:168,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 39 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:169,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 40 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:170,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 41 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:171,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 42 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:172,gun:1,recluse:1,ads:0} 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] if score @s reloadtimer matches 43 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:173,gun:1,recluse:1,ads:0} 1




##sound
#execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] at @s if score @s reloadtimer matches 11 run playsound minecraft:block.iron_door.open master @s[distance=..10] ~ ~ ~ 10 2
#execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] at @s if score @s reloadtimer matches 15 run playsound minecraft:block.barrel.open master @s[distance=..10] ~ ~ ~ 10 2
#execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] at @s if score @s reloadtimer matches 20 run playsound minecraft:entity.item_frame.remove_item master @s[distance=..10] ~ ~ ~ 10 2
#execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] at @s if score @s reloadtimer matches 27 run playsound minecraft:block.iron_trapdoor.close master @s[distance=..10] ~ ~ ~ 10 1
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] at @s if score @s reloadtimer matches 9 run playsound minecraft:reclusereloadfast master @a[distance=..10] ~ ~ ~ 3


##setmag
execute as @s[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] run function guns:general/setmag
