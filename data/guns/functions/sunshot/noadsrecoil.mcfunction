##noadsrecoil
##animation not ads
execute as @a[scores={recoiltimer=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:4,gun:1,sunshot:1} 1
execute as @a[scores={recoiltimer=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:5,gun:1,sunshot:1} 1
execute as @a[scores={recoiltimer=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:6,gun:1,sunshot:1} 1
execute as @a[scores={recoiltimer=4},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:7,gun:1,sunshot:1} 1
execute as @a[scores={recoiltimer=5},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:8,gun:1,sunshot:1} 1
execute as @a[scores={recoiltimer=6},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:9,gun:1,sunshot:1} 1
execute as @a[scores={recoiltimer=7},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:10,gun:1,sunshot:1} 1
execute as @a[scores={recoiltimer=8},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:11,gun:1,sunshot:1} 1
execute as @a[scores={recoiltimer=9},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:12,gun:1,sunshot:1} 1
execute as @a[scores={recoiltimer=10},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:13,gun:1,sunshot:1} 1
execute as @a[scores={recoiltimer=11},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run replaceitem entity @s weapon.mainhand carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray"}','{"text":"-Liu Feng","color":"gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:2,gun:1,sunshot:1} 1

##setmag
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run function guns:general/setmag