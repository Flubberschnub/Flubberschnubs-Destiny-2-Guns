##adsrecoil
##animation ads
execute as @a[scores={recoiltimer=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:14,gun:1,sunshot:2} 1
execute as @a[scores={recoiltimer=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:15,gun:1,sunshot:2} 1
execute as @a[scores={recoiltimer=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:16,gun:1,sunshot:2} 1
execute as @a[scores={recoiltimer=4},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:17,gun:1,sunshot:2} 1
execute as @a[scores={recoiltimer=5},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:18,gun:1,sunshot:2} 1
execute as @a[scores={recoiltimer=6},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:19,gun:1,sunshot:2} 1
execute as @a[scores={recoiltimer=7},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:20,gun:1,sunshot:2} 1
execute as @a[scores={recoiltimer=8},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:21,gun:1,sunshot:2} 1
execute as @a[scores={recoiltimer=9},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:22,gun:1,sunshot:2} 1
execute as @a[scores={recoiltimer=10},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Can\'nt outrun the sunrise."}']},Unbreakable:1b,CustomModelData:23,gun:1,sunshot:2} 1
execute as @a[scores={recoiltimer=11},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] run replaceitem entity @s weapon.mainhand carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray"}','{"text":"-Liu Feng","color":"gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:3,gun:1,sunshot:2} 1

##setmag
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] run function test:general/setmag
