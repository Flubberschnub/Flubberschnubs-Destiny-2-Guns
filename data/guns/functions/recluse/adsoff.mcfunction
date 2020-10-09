#adsoff
scoreboard players add @s adstimer 1
execute if score @s adstimer matches 1 run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"My bite will turn your sweet flesh to vile rot.\\"","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:123,gun:1,recluse:1,ads:0} 1
execute if score @s adstimer matches 2 run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"My bite will turn your sweet flesh to vile rot.\\"","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:122,gun:1,recluse:1,ads:0} 1
execute if score @s adstimer matches 3 run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"\\"My bite will turn your sweet flesh to vile rot.\\"","color":"gray","italic":true}']},Unbreakable:1b,CustomModelData:120,gun:1,recluse:1,ads:0} 1
effect clear @s slowness
tag @s remove ads
execute if score @s adstimer matches 1 at @s run playsound minecraft:recluseadsoff master @s
execute if score @s adstimer matches ..3 as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] run schedule function guns:recluse/scheduleadsoff 1t
execute if score @s adstimer matches 4.. run function guns:general/setmag
execute if score @s adstimer matches 4.. run scoreboard players reset @s adstimer

##setmag
execute as @s run function guns:general/setmag
