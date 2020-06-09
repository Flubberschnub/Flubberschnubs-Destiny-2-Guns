#adsoff
scoreboard players add @s adstimer 1
execute if score @s adstimer matches 1 run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:55,gun:1,sunshot:1} 1
execute if score @s adstimer matches 2 run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:54,gun:1,sunshot:1} 1
execute if score @s adstimer matches 3 run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] weapon.mainhand carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray"}','{"text":"-Liu Feng","color":"gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:2,gun:1,sunshot:1} 1
effect clear @s slowness
tag @s remove ads
execute if score @s adstimer matches 1 at @s run playsound minecraft:adsoff master @s
execute if score @s adstimer matches ..3 as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] run schedule function test:sunshot/scheduleadsoff 1t
execute if score @s adstimer matches 4.. run function test:general/setmag
execute if score @s adstimer matches 4.. run scoreboard players reset @s adstimer

##setmag
execute as @s run function test:general/setmag
