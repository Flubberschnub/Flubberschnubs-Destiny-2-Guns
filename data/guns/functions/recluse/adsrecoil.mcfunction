##adsrecoil
##animation ads
execute as @s[scores={recoiltimer=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:1}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:126,gun:1,recluse:1,ads:1} 1
execute as @s[scores={recoiltimer=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:1}}}] run replaceitem entity @s weapon.mainhand carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"My bite will turn your","color":"gray"}','{"text":"sweet flesh to vile rot.","color":"gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:127,gun:1,recluse:1,ads:1} 1
execute as @s[scores={recoiltimer=3},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:1}}}] run replaceitem entity @s weapon.mainhand carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"My bite will turn your","color":"gray"}','{"text":"sweet flesh to vile rot.","color":"gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:121,gun:1,recluse:1,ads:1} 1

##setmag
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:1}}}] run function guns:general/setmag
