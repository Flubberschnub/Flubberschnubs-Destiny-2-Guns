#adsoff
scoreboard players add @s adstimer 1
execute if score @s adstimer matches 1 run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Graviton Lance","color":"dark_purple","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:73,gun:1,graviton:1,ads:0} 1
execute if score @s adstimer matches 2 run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Graviton Lance","color":"dark_purple","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray","italic":true}','{"text":"-Liu Feng","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:72,gun:1,graviton:1,ads:0} 1
execute if score @s adstimer matches 3 run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] weapon.mainhand carrot_on_a_stick{display:{Name:'{"text":"Graviton Lance","color":"dark_purple","bold":true,"italic":false}',Lore:['{"text":"Think of space-time as a tapestry on a loom.","color":"gray"}','{"text":"This weapon is the needle.","color":"gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:70,gun:1,graviton:1,ads:0} 1
effect clear @s slowness
tag @s remove ads
execute if score @s adstimer matches 1 at @s run playsound minecraft:gravitonadsoff master @s
execute if score @s adstimer matches ..3 as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] run schedule function guns:graviton/scheduleadsoff 1t
execute if score @s adstimer matches 4.. run function guns:general/setmag
execute if score @s adstimer matches 4.. run scoreboard players reset @s adstimer

##setmag
execute as @s run function guns:general/setmag
